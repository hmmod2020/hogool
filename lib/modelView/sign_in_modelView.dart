import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hogool/model/SignIn_model.dart';
import 'package:hogool/network/global_data.dart';
import 'package:hogool/network/network_service.dart';
import 'package:hogool/network/signInNetwork.dart';

import '../UI/homeNav.dart';
import '../widgets/dilog_error.dart';

class SignInModelView{
  SignInModel data= SignInModel();

var networkServeics=NetworkServeics();

 String? valdatitorUserName(String value){

if (value.isEmpty){
  return "don't be empty";

}else{
  data.setUserName(value);
  return null ;
}

}
String? valdatitorPassword(String value){

if (value.isEmpty){
  
  return "don't be empty";

}else{
  data.setPassword(value);
  return null ;
}

}
  SignIn (BuildContext context)async{

   var response=await networkServeics.singIn(data.toJSON());

   if(response=="Error"){
    Navigator.of(context).pop();
       showDialog(
    barrierDismissible:true ,
    context:context, builder: ((context) {
    return ErrorDilog(title: "كلمة المرور او اسم المستخدم خاطئ",);
    }));
return "error";
   }else{
    DataManeger.setUpToken(response["token"].toString());
   // var account_type=networkServeics.getUserType();
    //DataManeger.getAccountType(account_type.toString());
Navigator.of(context).pop();
Navigator.of(context).pushNamed(HomeNav.route);
return response["token"];
   }
   

  } 
}