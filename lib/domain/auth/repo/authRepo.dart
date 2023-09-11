import 'package:dartz/dartz.dart';
import 'package:hogool/core/errors/failures.dart';
import 'package:hogool/domain/auth/entities/signIn.dart';

import '../entities/signUp.dart';

abstract class AuthRepo {

  Future<Either<Failure,String>>SignInAndGetToken(SignInEntity data);

  Future<Either<Failure,String>>getUserType();
   Future<Either<Failure,String>>SignUp(SignUpEntity data);
  
}