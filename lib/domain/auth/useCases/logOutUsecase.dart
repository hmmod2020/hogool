import 'package:dartz/dartz.dart';
import 'package:hogool/domain/auth/repo/authRepo.dart';

class LogoutUseCase {
  AuthRepo repo;
  LogoutUseCase(this.repo);

  Future <Unit>call(){

    return repo.logOut();
  }
  }

