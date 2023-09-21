part of 'auth_register_bloc.dart';

abstract class AuthRegisterState extends Equatable {
  const AuthRegisterState();
}

class AuthRegisterInitial extends AuthRegisterState {
  @override
  List<Object> get props => [];
}
