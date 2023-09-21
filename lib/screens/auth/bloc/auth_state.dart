part of 'auth_bloc.dart';

@immutable
abstract class AuthState {
   
}

class AuthInitial extends AuthState {
}
class Authloading extends AuthState {}
class AuthSecsseis extends AuthState {}
class AuthError extends AuthState {
  String errorMessage;
  AuthError({required this.errorMessage});
}
