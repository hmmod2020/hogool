
import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:hogool/model/farmer_model.dart';
import 'package:hogool/model/invesment_model.dart';
import 'package:hogool/model/land_model.dart';
import 'package:hogool/model/new_model.dart';
import '../model/sign_up_model.dart';
import 'global_data.dart';
import 'package:dio/dio.dart';


class NetworkServeics{
final dio = Dio();


  SignUp(Map<String,dynamic> data) async {
  final response = await dio.post(
    DataManeger.base_url+'singUp/',data:data,
    );

  print(response.data);
      return response.data;
}

getUserType() async{
   var response;
try{
  final response = await dio.get(
    DataManeger.base_url+'usertype/'
    ,
    );

    if(response.statusCode==200){
return response.data.toString();
    }else{

      return response.statusMessage.toString();
    }

}catch(e){
  print(e.toString());
return "Error";
} 
}

 singIn(Map<String,dynamic> data) async {
  var response;
try{
  final response = await dio.post(
    DataManeger.base_url+'api-token-auth/',data:data,
    );

    if(response.statusCode==200){
return response.data;
    }else{

      return response.statusMessage.toString();
    }

}catch(e){
return "Error";
} 
}

getFarmer(int id) async{
  dio.options.headers["Authorization"] = "Token ${DataManeger.getToken()}";
var response;
try{
final response = await dio.get(
    DataManeger.base_url+'show_farmer/${id}/',
    );
if(response.statusCode==200){
  print(response.data);
return FarmerModel.fromJson(response.data);
    }else{

      return response.statusMessage.toString();
    }

}catch(e){
  print(e.toString());
return "Error";
}
}
getinvesmentOffer(int id) async {
  dio.options.headers["Authorization"] = "Token ${DataManeger.getToken()}";
var response;
try{
final response = await dio.get(
    DataManeger.base_url+'invesment_offers/${id}/',
    );
if(response.statusCode==200){
  print(response.data);
return InvesmentModel.fromJson(response.data);
    }else{

      return response.statusMessage.toString();
    }

}catch(e){
  print(e.toString());
return "Error";
}
}
getNew(int id) async{
  dio.options.headers["Authorization"] = "Token ${DataManeger.getToken()}";
  var response;
try{
final response = await dio.get(
    DataManeger.base_url+'news/${id}/',
    );
if(response.statusCode==200){
  print(response.data);
return NewModel.fromJson(response.data);
    }else{

      return response.statusMessage.toString();
    }

}catch(e){
  print(e.toString());
return "Error";
}
}
getLand(int id)async {
  dio.options.headers["Authorization"] = "Token ${DataManeger.getToken()}";
    var response;
try{
final response = await dio.get(
    DataManeger.base_url+'land/${id}/',
    );
if(response.statusCode==200){
  print(response.data);
return LandModel.fromJson(response.data);
    }else{

      return response.statusMessage.toString();
    }

}catch(e){
  print(e.toString());
return "Error";
}
}

getAllFarmer() async{
  dio.options.headers["Authorization"] = "Token ${DataManeger.getToken()}";
  var response;
  
   List<FarmerModel>farmers=[];
try{
final response = await dio.get(
    DataManeger.base_url+'show_farmer/0/',
    );
if(response.statusCode==200){
  
  for(var list in response.data){
    farmers.add(FarmerModel.fromJson(list));
  }


return farmers;
    }else{

      return response.statusMessage.toString();
    }

}catch(e){
  print(e.toString());
return "Error";
}
}
  
}