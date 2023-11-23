// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";



class Environment extends JsonScheme {

  
  Environment(super.rawData);
   
  static Map get defaultData {
    return {"@type":"environment","username":"s"};
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


  
  String? get username {
    try {
      if (rawData["username"] is String == false){
        return null;
      }
      return rawData["username"] as String;
    } catch (e) {
      return null;
    }
  }


  
  static Environment create({

    String special_type = "environment",
    String? username,
})  {
    // Environment environment = Environment({
Map environment_data_create_json = {
  
      "@type": special_type,
      "username": username,


};


          environment_data_create_json.removeWhere((key, value) => value == null);
Environment environment_data_create = Environment(environment_data_create_json);

return environment_data_create;



      }
}