// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

import "session_account_permission.dart";


class SessionAccount extends JsonScheme {

  
  SessionAccount(super.rawData);
   
  static Map get defaultData {
    return {"@type":"sessionAccount","client_user_id":0,"token":"","create_date":0,"last_used_date":0,"device_model":"","operating_system":"linux","permission":{"@type":"sessionAccountPermission"}};
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


  
  int? get client_user_id {
    try {
      if (rawData["client_user_id"] is int == false){
        return null;
      }
      return rawData["client_user_id"] as int;
    } catch (e) {
      return null;
    }
  }


  
  String? get token {
    try {
      if (rawData["token"] is String == false){
        return null;
      }
      return rawData["token"] as String;
    } catch (e) {
      return null;
    }
  }


  
  int? get create_date {
    try {
      if (rawData["create_date"] is int == false){
        return null;
      }
      return rawData["create_date"] as int;
    } catch (e) {
      return null;
    }
  }


  
  int? get last_used_date {
    try {
      if (rawData["last_used_date"] is int == false){
        return null;
      }
      return rawData["last_used_date"] as int;
    } catch (e) {
      return null;
    }
  }


  
  String? get device_model {
    try {
      if (rawData["device_model"] is String == false){
        return null;
      }
      return rawData["device_model"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get operating_system {
    try {
      if (rawData["operating_system"] is String == false){
        return null;
      }
      return rawData["operating_system"] as String;
    } catch (e) {
      return null;
    }
  }


  
  SessionAccountPermission get permission {
    try {
      if (rawData["permission"] is Map == false){
        return SessionAccountPermission({}); 
      }
      return SessionAccountPermission(rawData["permission"] as Map);
    } catch (e) {  
      return SessionAccountPermission({}); 
    }
  }


  
  static SessionAccount create({

    String special_type = "sessionAccount",
    int? client_user_id,
    String? token,
    int? create_date,
    int? last_used_date,
    String? device_model,
    String? operating_system,
      SessionAccountPermission? permission,
})  {
    // SessionAccount sessionAccount = SessionAccount({
Map sessionAccount_data_create_json = {
  
      "@type": special_type,
      "client_user_id": client_user_id,
      "token": token,
      "create_date": create_date,
      "last_used_date": last_used_date,
      "device_model": device_model,
      "operating_system": operating_system,
      "permission": (permission != null)?permission.toJson(): null,


};


          sessionAccount_data_create_json.removeWhere((key, value) => value == null);
SessionAccount sessionAccount_data_create = SessionAccount(sessionAccount_data_create_json);

return sessionAccount_data_create;



      }
}