import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hogool/core/utils/app_string.dart';

import '../core/themes/app_color.dart';
import 'farmer_orders.dart';

class ProjectsScreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                  margin: EdgeInsets.only(top: 30,right: 20,bottom: 10),
                  child: Text(AppString.myWork,
                  style: TextStyle(
                    fontSize: 40,
                    color: AppColor.primaryColor,
                    fontWeight: FontWeight.bold
                  ),
                  )),
      buttonProject(AppString.myOffer,Container(),context),
      SizedBox(height: 20,),
      buttonProject(AppString.lands,Container(),context),
      SizedBox(height: 20,),
      buttonProject(AppString.jobRequests,Container(),context),
      SizedBox(height: 20,),
      buttonProject(AppString.projects,Container(),context),
      SizedBox(height: 40,),

            Center(
              child: Container(
                width: 250,
                height: 70,
                child: TextButton(
                              style: ButtonStyle(
                                backgroundColor:MaterialStateProperty.all( AppColor.primaryColor),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)
                                ))
                              ),
                              onPressed: (){
                               
                              },
                               child: Text(AppString.createInvesmentOffer,
                               style: TextStyle(
                                color: AppColor.backgroundColor,
                                fontSize: 25,
                                fontWeight: FontWeight.bold
                               ),
                               )
                                ,
                               ),
              ),
            )
  
          ],
        ),
      ),
    );
  }
Widget buttonProject(String titel,Widget screenRoute,BuildContext context){

  return InkWell(
    child: Container(
      margin: EdgeInsets.only(right: 20,left: 20,),
      height: 90,
      color:AppColor.fillInputColor ,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 15,left: 30),
            width: 30,
            height: 30,
            child:Image.asset("assets/orders.png", fit: BoxFit.cover,),
          ),
          Text(titel,
          style:TextStyle(
            color: AppColor.titleColor,
            fontSize: 30,
          ),
          )
       
      
         
        ],
      ),
    ),
    onTap: (){
       Navigator.push(context, CupertinoPageRoute(builder: (context)=>FarmerOrders()));
      
    },
  );
}

}