import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:hogool/core/errors/exceptions.dart';
import 'package:hogool/core/errors/failures.dart';
import 'package:hogool/core/utils/app_constant.dart';

import 'package:hogool/network/global_data.dart';

import '../models/response/farmer_model.dart';



abstract class FarmerDataSource{

  Future<List<FarmerModel>>getAllFarmers();
  Future<FarmerModel>getFarmer(int id);

}
class FarmerDataSourceImp implements FarmerDataSource{
  final dio = Dio();
  @override
  Future<List<FarmerModel>> getAllFarmers() async {
     dio.options.headers["Authorization"] = "Token ${DataManeger.getToken()}";
     var response;
        List<FarmerModel>farmers=[];
 response = await dio.get(
    appConstants.BASE_URL+appConstants.getAllFarmers,
    );
if(response.statusCode==200){
  for(var list in response.data){
    farmers.add(FarmerModel.fromJson(list));
  }
return farmers;
    }else{
      throw ServerException();
    }
  }
  @override
  Future<FarmerModel> getFarmer(int id) async {
    dio.options.headers["Authorization"] = "Token ${DataManeger.getToken()}";
     var response;
     response=await dio.get(
    appConstants.BASE_URL+appConstants.getFarmer+"${id}/",
    );
   if (response.status==200) {
     print (response.body);
     return FarmerModel.fromJson(response.data);
   }else{
    throw ServerException();
   }  
  }
 

}