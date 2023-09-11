import 'package:hogool/domain/auth/entities/signIn.dart';

class SignInModel extends SignInEntity {
  

  SignInModel({required super.username,required super.password});

 

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this.username;
    data['password'] = this.password;
    return data;
  }
}
