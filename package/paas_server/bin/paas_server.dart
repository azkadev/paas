// ignore_for_file: non_constant_identifier_names, unused_local_variable, unnecessary_brace_in_string_interps

import 'dart:convert';
import 'dart:math';

import 'package:general_lib/general_lib.dart';
import 'package:paas_server/crypto/crypto.dart';
import 'package:paas_server/docker/docker.dart';
import 'package:paas_server/paas_server_core.dart';
import 'package:path/path.dart';
import 'package:telegram_client/alfred/alfred_io.dart';
import 'package:universal_io/io.dart';

void main(List<String> arguments) async {
  Alfred app = Alfred();
  Directory directory_current = Directory.current;
  EventEmitter eventEmitter = EventEmitter();
  PaasServer paasServer = PaasServer();

  String host = Platform.environment["HOST"] ?? "0.0.0.0";
  int port = int.tryParse(Platform.environment["PORT"] ?? "") ?? 8097;

  app.all("/", (req, res) {
    return res.send("Server ok");
  });
  app.all("/test_docker_build", (req, res) async {
    print("START create project");
    Directory directory_new_project = Directory(join(
      directory_current.path,
      "project",
      random_name(),
    ));

    while (true) {
      await Future.delayed(Duration(microseconds: 1));

      if (directory_new_project.existsSync()) {
        directory_new_project = Directory(join(
          directory_current.path,
          "project",
          random_name(),
        ));
      } else {
        await directory_new_project.create(recursive: true);
        break;
      }
    }

    String new_port = "";

    while (true) {
      await Future.delayed(Duration(microseconds: 1));

      new_port = random_port(skip_ports: [
        "8080",
        "9000",
        "8097",
      ]);

      try {
        await get(Uri.parse("http://0.0.0.0:${new_port}"));
      } catch (e) {
        break;
      }
    }

    Future(() async {
      File file_docker_file = File(join(directory_new_project.path, "Dockerfile"));

      String docker_file_content = """
FROM ubuntu

WORKDIR /app/

ADD ./ /app/

ARG DEBIAN_FRONTEND=noninteractive

ENV PORT=${new_port}

CMD ["paas_server"]
"""
          .trim();
      await file_docker_file.writeAsString(docker_file_content);

      print("START BUILD");
      var res = await docker.buildContainer(
        name: basename(directory_new_project.path),
        pathToDockerFile: file_docker_file.path,
        workingDirectory: directory_new_project.path,
      );

      res.rawData.printPretty();
      if (res["@type"] == "error") {
        return;
      }
      var run_docker = await docker.runContainer(
        name: basename(directory_new_project.path),
        options: [
          //   "--network",
          //   "host",
          "--restart",
          "always",
          "-v",
          "${directory_new_project.path}:/app",
          "-v",
          "/usr:/usr",
          "--net", "paas_network",
          "--ip", "172.22.0.2",
        ],
        workingDirectory: directory_new_project.path,
      );

      run_docker.rawData.printPretty();
    });
    return res.send("Procces Build: Project Name: ${ basename(directory_new_project.path)} PORT :${new_port}");
  });

  app.all("/api", (req, res) async {
    Map result = await paasServer.requst(parameters: {});
    return crypto.encrypt(data: json.encode(result));
  });

  await app.listen(
    port,
    host,
  );
}

String random_port({
  required List<String> skip_ports,
}) {
  String new_port = "";
  List<int> lists_ports = List.generate(10, (index) => index).toList();

  while (true) {
    if (new_port.length == 4) {
      if (skip_ports.contains(new_port)) {
        new_port = "";
      } else {
        break;
      }
    } else {
      new_port += "${lists_ports[Random().nextInt(lists_ports.length)]}";
    }
  }

  return new_port;
}

String random_name() {
  List<String> names = ["chicken", "dog", "sheep", "bird", "supra", "space", "ship", "blender"];
  String name = "";

  name += names[Random().nextInt(names.length)];
  name += "_${names[Random().nextInt(names.length)]}";

  return name;
}
