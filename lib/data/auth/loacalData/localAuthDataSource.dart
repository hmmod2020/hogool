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

  SharedPreferences sharedPreferences;
  LocalAuthDataSourceImp(this.sharedPreferences);

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
      
  return await sharedPreferences.remove("token");
    }
  }

  @override
  Future<Unit> setToken(String token)async {
   await sharedPreferences.setString("token", token);
    return Future.value(unit);
    
  }
  
  @override
  Future<String?> getUserType() async{
   return await sharedPreferences.getString("userType");
  }
  
  @override
  Future<Unit> removeUserType() async{
    await sharedPreferences.remove("userType");
    return Future.value(unit);
  }
  
  @override
  Future<Unit> setUserType(String userType)async {
    await sharedPreferences.setString("userType",userType );
    return Future.value(unit);
  }

}