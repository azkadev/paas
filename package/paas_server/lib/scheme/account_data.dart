// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";



class AccountData extends JsonScheme {

  
  AccountData(super.rawData);
   
  static Map get defaultData {
    return {"@type":"accountData","id":0,"first_name":"","last_name":"","username":"","type":"","is_verified":false};
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


  
  int? get id {
    try {
      if (rawData["id"] is int == false){
        return null;
      }
      return rawData["id"] as int;
    } catch (e) {
      return null;
    }
  }


  
  String? get first_name {
    try {
      if (rawData["first_name"] is String == false){
        return null;
      }
      return rawData["first_name"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get last_name {
    try {
      if (rawData["last_name"] is String == false){
        return null;
      }
      return rawData["last_name"] as String;
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


  
  String? get type {
    try {
      if (rawData["type"] is String == false){
        return null;
      }
      return rawData["type"] as String;
    } catch (e) {
      return null;
    }
  }


  
  bool? get is_verified {
    try {
      if (rawData["is_verified"] is bool == false){
        return null;
      }
      return rawData["is_verified"] as bool;
    } catch (e) {
      return null;
    }
  }


  
  static AccountData create({

    String special_type = "accountData",
    int? id,
    String? first_name,
    String? last_name,
    String? username,
    String? type,
    bool? is_verified,
})  {
    // AccountData accountData = AccountData({
Map accountData_data_create_json = {
  
      "@type": special_type,
      "id": id,
      "first_name": first_name,
      "last_name": last_name,
      "username": username,
      "type": type,
      "is_verified": is_verified,


};


          accountData_data_create_json.removeWhere((key, value) => value == null);
AccountData accountData_data_create = AccountData(accountData_data_create_json);

return accountData_data_create;



      }
}