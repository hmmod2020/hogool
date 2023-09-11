import 'package:dartz/dartz.dart';
import 'package:hogool/core/errors/failures.dart';
import 'package:hogool/domain/auth/repo/authRepo.dart';
import 'package:hogool/network/signInNetwork.dart';

class UserTypeUseCase{

AuthRepo repo;
UserTypeUseCase({required this.repo});

Future<Either<Failure,String>>call(){
return repo.getUserType();
}


}