// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

import "environment.dart";


class Project extends JsonScheme {

  
  Project(super.rawData);
   
  static Map get defaultData {
    return {"@type":"project","owner_user_id":0,"name":"","project_id":"","environment":{"@type":"environment","username":"s"},"file_url":"","status":"running"};
  }

  
  String? get special_type {
    try {
      if (rawData["@type"] is String == false){
        return null;
      }
      return rawData["@type"] as String;
    } catch (e) {
      return null;
    }
  }


  
  int? get owner_user_id {
    try {
      if (rawData["owner_user_id"] is int == false){
        return null;
      }
      return rawData["owner_user_id"] as int;
    } catch (e) {
      return null;
    }
  }


  
  String? get name {
    try {
      if (rawData["name"] is String == false){
        return null;
      }
      return rawData["name"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get project_id {
    try {
      if (rawData["project_id"] is String == false){
        return null;
      }
      return rawData["project_id"] as String;
    } catch (e) {
      return null;
    }
  }


  
  Environment get environment {
    try {
      if (rawData["environment"] is Map == false){
        return Environment({}); 
      }
      return Environment(rawData["environment"] as Map);
    } catch (e) {  
      return Environment({}); 
    }
  }


  
  String? get file_url {
    try {
      if (rawData["file_url"] is String == false){
        return null;
      }
      return rawData["file_url"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get status {
    try {
      if (rawData["status"] is String == false){
        return null;
      }
      return rawData["status"] as String;
    } catch (e) {
      return null;
    }
  }


  
  static Project create({

    String special_type = "project",
    int? owner_user_id,
    String? name,
    String? project_id,
      Environment? environment,
    String? file_url,
    String? status,
})  {
    // Project project = Project({
Map project_data_create_json = {
  
      "@type": special_type,
      "owner_user_id": owner_user_id,
      "name": name,
      "project_id": project_id,
      "environment": (environment != null)?environment.toJson(): null,
      "file_url": file_url,
      "status": status,


};


          project_data_create_json.removeWhere((key, value) => value == null);
Project project_data_create = Project(project_data_create_json);

return project_data_create;



      }
}