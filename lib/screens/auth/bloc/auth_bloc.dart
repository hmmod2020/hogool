import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:hogool/core/errors/failures.dart';
import 'package:hogool/data/auth/models/request/signInModel.dart';
import 'package:hogool/data/auth/models/request/signUpModel.dart';
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
    on<AuthEvent>((event, emit)async {
      if(event is RegisterEvent){
    emit(Authloading());
        var signUp=await signUpUseCase(event.userData);
        signUp.fold(
          (failuer) {
          emit(AuthError(errorMessage:failuer.failureMsg));
           print(failuer.failureMsg);
          }
        , (signUp){
          emit(AuthSecsseis());
          print(signUp);
        });
 
      }else if(event is LogInEvent){
        emit(Authloading());
        final logIn=await signInUseCase(event.data);
        logIn.fold((failuer) {
           emit(AuthError(errorMessage:failuer.failureMsg));
           print(failuer.failureMsg);

        }, (login) {
          emit(AuthSecsseis());
        });

      }
    });  
  }
}
