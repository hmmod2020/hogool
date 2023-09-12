import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:hogool/domain/auth/useCases/checkedLoggedInUsecase.dart';
import 'package:hogool/domain/auth/useCases/getTokenUseCase.dart';
import 'package:hogool/domain/auth/useCases/getUserTupyUseCase.dart';
import 'package:hogool/domain/auth/useCases/logOutUsecase.dart';
import 'package:hogool/domain/auth/useCases/signInUseCase.dart';
import 'package:hogool/domain/auth/useCases/signUpUseCase.dart';
import 'package:meta/meta.dart';
import '../../../domain/auth/useCases/checkedLoggedInUsecase.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
 final SignUpUseCase signUpUseCase;
 final SignInUseCase signInUseCase;
 final GetTokenUseCase getTokenUseCase;
 final LogoutUseCase logoutUseCase;
 final UserTypeUseCase userType;
 final isLoggedIn IsLoggedIn;

  AuthBloc(
  this.userType,this.getTokenUseCase,
  this.logoutUseCase,this.signInUseCase,
  this.signUpUseCase,this.IsLoggedIn) : super(AuthInitial()) {

    on<AuthEvent>((event, emit) {
      

    });  
  }
}
