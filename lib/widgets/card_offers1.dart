import 'package:flutter/material.dart';
import 'package:hogool/core/utils/app_string.dart';

import '../core/themes/app_color.dart';

class CardMyOffers extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Container(
          width: double.infinity,
         height: 340, 
         decoration: BoxDecoration(
          borderRadius:BorderRadius.all(Radius.circular(20)),
          color:AppColor.fillInputColor
          ),
          child:Container(
             margin: EdgeInsets.only(right: 25,top: 25,left: 25),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                        child: Image.asset("assets/green.png"),
                      ),
                      SizedBox(width: 10,),
                      Text(AppString.accepted,
                      style:TextStyle(
                        color: AppColor.primaryColor,
                        fontSize: 20
                      ),
                      ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(AppString.offerDescriptionC,
                      style:TextStyle(
                        color: AppColor.primaryColor,
                        fontSize: 22
                      ),
                      ),),
                      Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("300000 -",
                          style: TextStyle(
                            fontSize: 22,
                            color:AppColor.priceColor
                          ),
                          ),
                          Text(AppString.monthly,
                          style: TextStyle(
                            fontSize: 22,
                            color: AppColor.priceColor
                          ),
                          ),
                        ],
                      )),
                  ],
                ),
                SizedBox(height: 10,),
                Expanded(
                  child:Text("معلومات هنا بتتكلم عن الحاصل معلوماتمعلومات هنا بتتكلم عن هنبتتكلم عن الحاصل معلومات ",
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColor.titleColor
                          ),
                          ), ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text(AppString.irrigation_typemodels,
                      style:TextStyle(
                        color: AppColor.primaryColor,
                        fontSize: 22
                      ),
                      ),
                          Text("محوري",
                      style:TextStyle(
                        color: AppColor.titleColor,
                        fontSize: 16
                      ),
                      ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text(AppString.theLandOner,
                      style:TextStyle(
                        color: AppColor.primaryColor,
                        fontSize: 22
                      ),
                      ),
                          Text("محمد البدري",
                      style:TextStyle(
                        color: AppColor.titleColor,
                        fontSize: 16
                      ),
                      ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                                       Text(AppString.farmerNameC ,
                      style:TextStyle(
                        color: AppColor.primaryColor,
                        fontSize: 22
                      ),
                      ),
                          Text("احمد دفع الله",
                      style:TextStyle(
                        color: AppColor.titleColor,
                        fontSize: 16
                      ),
                      ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                               Expanded(
                      flex: 1,
                      child:Row(
                        
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            child:Image.asset("assets/marker.png")
                          ),
                          SizedBox(width: 5,),
                          Text("الخرطوم",
                      style:TextStyle(
                        color: AppColor.titleColor,
                        fontSize: 16
                      ),
                      ),
                        ],
                      ) ),
                      Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            child:Image.asset("assets/Phone.png")
                          ),
                          SizedBox(width: 5,),
                          Text("0117034643",
                      style:TextStyle(
                        color: AppColor.titleColor,
                        fontSize: 16
                      ),
                      )
                        ],
                      )),
                            ],
                          ),
                          SizedBox(height: 20,)
              ],
            ),
          ),
          )
      ),
    );
  }
}