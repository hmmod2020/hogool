
import 'package:hogool/network/global_data.dart';

class SignUpModel{
 String? fullName;
 String? userName;
 String? password;
 String? email;

SignUpModel({this.fullName, this.userName, this.email,this.password});

SignUpModel.fromJson(Map <String ,dynamic> json){
fullName=json["fullName"];
userName=json["userName"];
password=json["password"];
email=json["email"];
}

Map<String,dynamic>toJSON( ){

  return {
    "fullName":fullName,
    "userName":userName,
    "password":password,
    "email":email,

  };

}

}