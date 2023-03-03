

class SignInModel{
 String? username;
 String? password;
 

SignInModel({this.username, this.password});

SignInModel.fromJson(Map <String ,dynamic> json){
username=json["username"];
password=json["password"];

}

Map<String,dynamic>toJSON( ){

  return {
    "username":username,
    "password":password,
  };

}

setUserName(String value){
username=value;
}
setPassword(String value){
password=value;
}

}