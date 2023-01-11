import '../model/sign_up_model.dart';

class SignUPFarmerModelView {
var userData=SignUpModel();
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


}