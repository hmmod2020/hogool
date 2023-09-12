import 'package:hogool/domain/auth/repo/authRepo.dart';

class GetTokenUseCase{

  AuthRepo repo;
  GetTokenUseCase(this.repo);

  Future <String?> call(){

    return repo.getToken();
  }
}