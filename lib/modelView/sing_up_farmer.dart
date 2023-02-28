import 'package:chopper/chopper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import '../model/sign_up_model.dart';
import '../network/signUp_service.dart';
import '../widgets/dilog_done.dart';
import '../widgets/dilog_error.dart';

class SignUPFarmerModelView {
var userData=SignUpModel();
late SignUpServeics server;

 SignUPFarmerModelView(){
userData.accountType="farmer";
server =new SignUpServeics();
}
String tempPassword="";


//////////////////validation//////////////
String? userNameIsValid(String value){
if(value.isEmpty||value==" "){
  return "user name is requaired";
}
else{
  userData.userName=value;
  return null;
}

}

String? nameIsValid(String value){

if(value.isEmpty||value==" "){
  return "name is requaired";
}else{
  userData.fullName=value;
return null;}
}


String? emailIsValid(String value){
RegExp email = new RegExp ( "[a-z0-9]+@[a-z]+\.[a-z]{2,3}",
  caseSensitive: false,
  multiLine: false,);

if (email.hasMatch(value)){
  userData.email=value;
  return null;
}else if(value.isEmpty||value==" "){
  return "don't be empty";
}
else{
  return "enter the vaild email";
}
}

String? passwordIsValid(String value){

RegExp password = new RegExp ( r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$',
  caseSensitive: false,
  multiLine: false,);
  
  if(value.length<8){
    return "password must be up to 8 letters";
  }
  else if(!password.hasMatch(value.toString())){
  return "must be 8 letter ,uperrcase,lowercase ,number,and Special Character";
}else if (value.isEmpty){
return "enter password";
}else{
  tempPassword=value;
  return null;
}
}
 
String? RepasswordIsValid(String value){
if(value==tempPassword){
  userData.password=value;
  return null;
}else {
  return "Password and verification are not compatible";
}

}
//////////////////validation//////////////

void signUp(BuildContext context) async{
 
var response= await server.SignUp(userData.toJSON());
if (response=="Welcome"+userData.fullName.toString()){
Navigator.of(context).pop();
   Future.delayed(Duration(milliseconds: 300), () {
    showDialog(
    barrierDismissible:true ,
    context:context, builder: ((context) {
    return DoneDilog();
    }));
  // Do something
});


}else{
  Navigator.of(context).pop();
  showDialog(
    barrierDismissible:true ,
    context:context, builder: ((context) {
    return ErrorDilog();
    }));
}
}


}


/** showDialog(
    barrierDismissible:false ,
    context:context, builder: ((context) {
    return ErrorDilog();
    }));*/