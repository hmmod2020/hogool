

import 'package:chopper/chopper.dart';
import 'package:hogool/model/sign_up_model.dart';

@ChopperApi(baseUrl:"/signUP ")

abstract class SignUpApi extends ChopperService{

@Post()
 Future <Response> createUser (@Body() Map<String ,dynamic> data);

@Post() 
Future <Response> userNameIsAvalable(@Body() Map <String,String> userName);

}