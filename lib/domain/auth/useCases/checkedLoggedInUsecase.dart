import 'package:hogool/domain/auth/repo/authRepo.dart';

class isLoggedIn{

  AuthRepo repo;

  isLoggedIn(this.repo);

  Future<bool> call(){

    return repo.isLoggedIn();
  }

}