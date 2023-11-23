// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";



class Error extends JsonScheme {

  
  Error(super.rawData);
   
  static Map get defaultData {
    return {"@type":"error","message":"","description":""};
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


  
  String? get message {
    try {
      if (rawData["message"] is String == false){
        return null;
      }
      return rawData["message"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get description {
    try {
      if (rawData["description"] is String == false){
        return null;
      }
      return rawData["description"] as String;
    } catch (e) {
      return null;
    }
  }


  
  static Error create({

    String special_type = "error",
    String? message,
    String? description,
})  {
    // Error error = Error({
Map error_data_create_json = {
  
      "@type": special_type,
      "message": message,
      "description": description,


};


          error_data_create_json.removeWhere((key, value) => value == null);
Error error_data_create = Error(error_data_create_json);

return error_data_create;



      }
}