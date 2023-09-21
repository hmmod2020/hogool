import 'package:flutter/material.dart';

import 'package:hogool/core/utils/app_string.dart';
import 'package:hogool/screens/auth/pages/signUpPage.dart';

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
             BottonStart(AppString.farmer,context,SignUpScreen.singUpFarmer),
             BottonStart(AppString.investor,context,SignUpScreen.singUpFarmer),
             BottonStart(AppString.landOner,context,SignUpScreen.singUpFarmer),
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
                  decoration: const BoxDecoration(
                    color:  AppColor.primaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  margin: const EdgeInsets.only(left: 20,right: 20,top:45,bottom: 45),
                  child: TextButton(
                    child: Text(textButton,
                    style: const TextStyle(
                      color: AppColor.backgroundColor,
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