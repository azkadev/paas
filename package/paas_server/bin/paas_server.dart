import 'package:paas_server/paas_server.dart' as paas_server;
import 'package:telegram_client/alfred/alfred_io.dart';
import 'package:universal_io/io.dart';

void main(List<String> arguments) async {
  Alfred app = Alfred();

  String host = Platform.environment["HOST"] ?? "0.0.0.0";
  int port = int.tryParse(Platform.environment["PORT"] ?? "") ?? 8097;

  app.all("/", (req, res) {

  });
  
  app.all("/api", (req, res) {
    
  });

  await app.listen(
    port,
    host,
  );
}
