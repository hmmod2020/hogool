import 'package:hogool/domain/auth/entities/signIn.dart';
import 'package:hogool/domain/auth/entities/signUp.dart';

class SignUpModel extends SignUpEntity {
 
  SignUpModel({
     super.fullName,
     super.userName,
     super.password,
     super.email,
     super.accountType});

 factory SignUpModel.fromJson(Map<String, dynamic> json) {
    return SignUpModel(
      fullName: json["fullName"],
      userName: json["userName"],
      password: json["password"],
      email: json["email"],
      accountType: json["accountType"],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["fullName"] = this.fullName;
    data["userName"] = this.userName;
    data["password"] = this.password;
    data["email"] = this.email;
    data["accountType"] = this.accountType; 
    return data;
  }
}
