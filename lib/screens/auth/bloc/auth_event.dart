part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {}

class RegisterEvent extends AuthEvent {
  final SignUpModel userData;
  RegisterEvent({required this.userData});
  
}
class LogInEvent extends AuthEvent {

  final SignInModel data;
  LogInEvent({required this.data});
}

