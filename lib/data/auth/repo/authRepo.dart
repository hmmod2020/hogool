import 'package:dartz/dartz.dart';
import 'package:hogool/core/errors/exceptions.dart';
import 'package:hogool/core/errors/failures.dart';
import 'package:hogool/core/helper/networkInfo.dart';
import 'package:hogool/data/auth/loacalData/localAuthDataSource.dart';
import 'package:hogool/data/auth/models/request/signInModel.dart';
import 'package:hogool/data/auth/models/request/signUpModel.dart';
import 'package:hogool/data/auth/remoteData/authDataSourse.dart';
import 'package:hogool/domain/auth/entities/signIn.dart';
import 'package:hogool/domain/auth/entities/signUp.dart';
import 'package:hogool/domain/auth/repo/authRepo.dart';

class AuthRepository extends AuthRepo{
  RemoteAuthDataSource remoteDataSource;
  LocalAuthDataSource  localDataSource;
  NetworkManager networkManager;
   
   AuthRepository( this.localDataSource, this.remoteDataSource , this.networkManager);
  @override
  Future<Either<Failure, String>> SignInAndGetToken(SignInEntity data)async {
   if(await networkManager.isConnected){
    try {
   var response= await remoteDataSource.signInAndGetToken(data as SignInModel);

   if(await localDataSource.isLoggedIn()){
    localDataSource.removeToken();
    localDataSource.setToken(response.token!);
   }else{
    localDataSource.setToken(response.token!);
   }
   return right(response.token!);
      
    }on ServerException{
  return Left(server_failure());
    }
   }else{
    return Left(No_connection_failure());
   }
  }

  @override
  Future<Either<Failure, String>> SignUp(SignUpEntity data)async {
  if(await networkManager.isConnected){
    try {
       await remoteDataSource.signUP(data as SignUpModel);
       return right("Success"); 
       
    } on ServerException {
      return Left(server_failure());
    }

  }else{
    return Left(No_connection_failure());
  }
  }

  @override
  Future<Either<Failure, String>> getUserType() async {
    if(await networkManager.isConnected){
      try {
       return Right(await remoteDataSource.getUserType());
        
      } on ServerException{
        return Left(server_failure());
      }
    }else{
      return left(No_connection_failure());
    }

  }
  
  @override
  Future<bool> isLoggedIn() async{
   return await localDataSource.isLoggedIn();
  }
  
  @override
  Future<Unit> logOut() async {
    if(await localDataSource.isLoggedIn()){
      await localDataSource.removeToken();
      await localDataSource.removeUserType();
      return Future.value(unit);
    }else{
      return Future.value(unit);
    }
  }
  
  @override
  Future<String?> getToken()async {
    if(await localDataSource.isLoggedIn()){
     return await localDataSource.getToken();
    }else{
      print("you are not logged in");
      return "you are not logged in";
    }
  }

}  