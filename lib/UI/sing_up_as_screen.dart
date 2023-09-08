import 'package:flutter/material.dart';
import 'package:hogool/UI/sign_up_farmer.dart';
import 'package:hogool/core/utils/app_string.dart';

import '../core/themes/app_color.dart';
import '../network/global_data.dart';
class SingUpAs extends StatelessWidget{
static String signUpAs="/signUpAs";

  @override
  Widget build(BuildContext context) {


    return Scaffold(
    body: SafeArea(
      child:Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
            )),
          Expanded(
            flex: 8,
            child: Column(
              children: [
             BottonStart(AppString.farmer,context,SingUpFarmer.singUpFarmer),
             BottonStart(AppString.investor,context,SingUpFarmer.singUpFarmer),
             BottonStart(AppString.landOner,context,SingUpFarmer.singUpFarmer),
              ],
            )),
          Expanded(
            flex: 1,
            child: Container(
            color: Colors.blueAccent[500],
            )),
        ],
      )
      ),

  );
  }





Widget BottonStart(String textButton,BuildContext context,String path){

  return  Expanded(
                child:Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color:  AppColor.primaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  margin: EdgeInsets.only(left: 20,right: 20,top:45,bottom: 45),
                  child: TextButton(
                    child: Text(textButton,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                    ),
                    onPressed: (){
                    Navigator.of(context).pushNamed(path);
                    },),
                ),
              );
              
              }


}