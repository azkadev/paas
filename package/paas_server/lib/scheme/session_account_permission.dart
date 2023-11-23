// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";



class SessionAccountPermission extends JsonScheme {

  
  SessionAccountPermission(super.rawData);
   
  static Map get defaultData {
    return {"@type":"sessionAccountPermission"};
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


  
  static SessionAccountPermission create({

    String special_type = "sessionAccountPermission",
})  {
    // SessionAccountPermission sessionAccountPermission = SessionAccountPermission({
Map sessionAccountPermission_data_create_json = {
  
      "@type": special_type,


};


          sessionAccountPermission_data_create_json.removeWhere((key, value) => value == null);
SessionAccountPermission sessionAccountPermission_data_create = SessionAccountPermission(sessionAccountPermission_data_create_json);

return sessionAccountPermission_data_create;



      }
}