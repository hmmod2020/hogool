import 'package:dartz/dartz.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class LocalAuthDataSource{

  Future <String?> getToken();
  Future <Unit> setToken(String token);
  Future <bool?> removeToken();
  Future <bool> isLoggedIn();
  Future <String?> getUserType();
  Future <Unit> setUserType(String userType);
  Future <Unit> removeUserType();
}

class LocalAuthDataSourceImp extends LocalAuthDataSource{

  @override
  Future <String?> getToken() async {
    return await SharedPreferences.getInstance().then((value) => value.getString('token'));
  }
 
  @override
  Future<bool> isLoggedIn() async{
    var token=await getToken();
    if(token==null){
    return false;
    }else{
      return true;
    }
  }

  @override
  Future<bool?> removeToken()async {
    var token=await getToken();
    if(token==null){
    return true;
    }else{
  return await SharedPreferences.getInstance().then((value) => value.remove("token"));
    }
  }

  @override
  Future<Unit> setToken(String token)async {
   await SharedPreferences.getInstance().then((value) => value.setString("token", token));
    return Future.value(unit);
    
  }
  
  @override
  Future<String?> getUserType() async{
   return await SharedPreferences.getInstance().then((value) => value.getString("userType"));
  }
  
  @override
  Future<Unit> removeUserType() async{
    await SharedPreferences.getInstance().then((value) => value.remove("userType"));
    return Future.value(unit);
  }
  
  @override
  Future<Unit> setUserType(String userType)async {
    await SharedPreferences.getInstance().then((value) => value.setString("userType",userType ));
    return Future.value(unit);
  }

}