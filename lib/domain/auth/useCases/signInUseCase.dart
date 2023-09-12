import 'package:dartz/dartz.dart';
import 'package:hogool/core/errors/failures.dart';
import 'package:hogool/domain/auth/entities/signIn.dart';
import 'package:hogool/domain/auth/repo/authRepo.dart';

class SignInUseCase {
  
  AuthRepo repo;
  SignInUseCase( this.repo);


  Future<Either<Failure,String>>call(SignInEntity data){

    return repo.SignInAndGetToken(data);
  }

  }
