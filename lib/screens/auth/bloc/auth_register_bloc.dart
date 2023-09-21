import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'auth_register_event.dart';
part 'auth_register_state.dart';

class AuthRegisterBloc extends Bloc<AuthRegisterEvent, AuthRegisterState> {
  AuthRegisterBloc() : super(AuthRegisterInitial()) {
    on<AuthRegisterEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
