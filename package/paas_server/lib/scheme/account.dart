// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";



class Account extends JsonScheme {

  
  Account(super.rawData);
   
  static Map get defaultData {
    return {"@type":"account","id":0,"first_name":"","last_name":"","username":"","type":"","is_verified":false,"plan_type":"free","create_date":0,"plan_expired_date":0};
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


  
  String? get plan_type {
    try {
      if (rawData["plan_type"] is String == false){
        return null;
      }
      return rawData["plan_type"] as String;
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


  
  int? get plan_expired_date {
    try {
      if (rawData["plan_expired_date"] is int == false){
        return null;
      }
      return rawData["plan_expired_date"] as int;
    } catch (e) {
      return null;
    }
  }


  
  static Account create({

    String special_type = "account",
    int? id,
    String? first_name,
    String? last_name,
    String? username,
    String? type,
    bool? is_verified,
    String? plan_type,
    int? create_date,
    int? plan_expired_date,
})  {
    // Account account = Account({
Map account_data_create_json = {
  
      "@type": special_type,
      "id": id,
      "first_name": first_name,
      "last_name": last_name,
      "username": username,
      "type": type,
      "is_verified": is_verified,
      "plan_type": plan_type,
      "create_date": create_date,
      "plan_expired_date": plan_expired_date,


};


          account_data_create_json.removeWhere((key, value) => value == null);
Account account_data_create = Account(account_data_create_json);

return account_data_create;



      }
}