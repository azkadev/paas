import 'dart:io';

import 'package:general_lib/general_lib.dart';
import 'package:path/path.dart';

void main(List<String> args) async {
  List<Map> schemes = [
    {
      "@type": "ok",
      "message": "",
      "description": "",
    },
    {
      "@type": "error",
      "message": "",
      "description": "",
    },
    {
      "@type": "accountData",
      "id": 0,
      "first_name": "",
      "last_name": "",
      "username": "",
      "type": "",
      "is_verified": false,
      "plan_type": "free",
    },
    {
      "@type": "projectData",
      "owner_user_id": 0,
      "name": "",
      "project_id": "",
      "environment": {
        "username": "s"
      },
      "file_url": "",
      "status": "running",
    },
    
  ];

  jsonToScripts(schemes, directory: Directory(join(Directory.current.path, "lib", "scheme")));
}
