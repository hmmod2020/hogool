import 'package:equatable/equatable.dart';

class SignInEntity extends Equatable{

 String? username;
 String? password;

 SignInEntity({required this.username,required this.password});

  @override
  // TODO: implement props
  List<Object?> get props => [username,password];
}