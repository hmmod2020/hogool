import 'package:dartz/dartz.dart';
import 'package:hogool/domain/auth/entities/signUp.dart';


import '../../../core/errors/failures.dart';
import '../repo/authRepo.dart';

class SignUpUseCase {

AuthRepo repo;

SignUpUseCase(this.repo);

Future<Either<Failure,String>>call(SignUpEntity data){

  return repo.SignUp(data);
}

}