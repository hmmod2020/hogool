 import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:hogool/core/errors/exceptions.dart';
import 'package:hogool/core/errors/failures.dart';
import 'package:hogool/core/errors/serverErrorModel.dart';
import 'package:hogool/core/helper/networkInfo.dart';
import 'package:hogool/core/utils/app_constant.dart';
import 'package:hogool/core/utils/app_string.dart';
import 'package:hogool/data/auth/loacalData/localAuthDataSource.dart';
import 'package:hogool/data/auth/models/request/signInModel.dart';
import 'package:hogool/data/auth/models/request/signUpModel.dart';
import 'package:hogool/data/auth/models/response/signInModelR.dart';
import 'package:shared_preferences/shared_preferences.dart';


abstract class RemoteAuthDataSource {

Future<Unit>signUP(SignUpModel data);
Future<SignInModelR>signInAndGetToken(SignInModel data);
Future<String>getUserType();
 }

 class RemoteAuthDataSourceImp  extends RemoteAuthDataSource{
  NetworkManager networkManager;
  LocalAuthDataSource localAuthDataSource;
  RemoteAuthDataSourceImp(this.networkManager, this.localAuthDataSource);
  final dio = Dio();
  @override
  Future<SignInModelR> signInAndGetToken(SignInModel data) async{
   if(await networkManager.isConnected){
    var response = await dio.post(
    appConstants.BASE_URL+appConstants.signIn,
    data: data.toJson()
    );
    if(response.statusCode==200){
      return  SignInModelR.fromJson(response.data);
    }else{
      var errors=ServerErrorModel.fromJson(response.data);

      throw ServerException(errorMessage:errors.nonFieldErrors!.first);
    }
   }else{
    throw No_connection_exception();
   }
    
  }
 
  @override
  Future< Unit> signUP(SignUpModel data)async {
    print(appConstants.BASE_URL+appConstants.signUp,);
    print(data.toJson());
if(await networkManager.isConnected){
var response = await dio.post(
    "https://mihadkh2021.pythonanywhere.com/singUp/",
    data: data.toJson()
    );
    if (response.statusCode==200&&response.data=="user is already exist"){
      throw ServerException(errorMessage:AppString.errorDublcatedUser);
    }else if(response.statusCode==200&&response.data!="user is already exist"){
      throw ServerException(errorMessage:AppString.errorServer);
    }
    else{
     throw ServerException(errorMessage:AppString.errorServer);
    }
  }else{
   throw No_connection_exception();
  }
}

  @override
  Future<String> getUserType() async {
    var userType =await localAuthDataSource.getUserType();
    if (userType!=null) {
      return userType;
    }else{
      var token= await localAuthDataSource.getToken();
   if (token!=null){
     dio.options.headers["Authorization"] = "Token $token";
      var response = await dio.get(
    appConstants.BASE_URL+appConstants.getUserType
    );
    if (response.statusCode == 200) {
      await localAuthDataSource.setUserType(response.data);
 return response.data;
    }else{
      throw ServerException(errorMessage: AppString.errorServer);
    }
   }else{
    return "noUser";
   }
    }

   
    
    
  }


 }