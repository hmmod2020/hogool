import 'package:equatable/equatable.dart';

class SignUpEntity extends Equatable {
  
String? fullName;
 String? userName;
 String? password;
 String? email;
 String? accountType;
  
  
  SignUpEntity({
  required this.fullName,required this.userName,required this.password,
  required this.email,required this.accountType});


  @override
  // TODO: implement props
  List<Object?> get props => [fullName,userName,password,email,accountType];

}