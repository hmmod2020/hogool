
import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import '../model/sign_up_model.dart';
import 'global_data.dart';
import 'package:dio/dio.dart';


class SignUpServeics{
final dio = Dio();

  SignUp(Map<String,dynamic> data) async {
  final response = await dio.post(
    DataManeger.base_url+'singUp/',data:data,
    );
  print(response.data);
      return response.data;
}





  
}