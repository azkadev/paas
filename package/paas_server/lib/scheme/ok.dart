// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";



class Ok extends JsonScheme {

  
  Ok(super.rawData);
   
  static Map get defaultData {
    return {"@type":"ok","message":"","description":""};
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


  
  static Ok create({

    String special_type = "ok",
    String? message,
    String? description,
})  {
    // Ok ok = Ok({
Map ok_data_create_json = {
  
      "@type": special_type,
      "message": message,
      "description": description,


};


          ok_data_create_json.removeWhere((key, value) => value == null);
Ok ok_data_create = Ok(ok_data_create_json);

return ok_data_create;



      }
}