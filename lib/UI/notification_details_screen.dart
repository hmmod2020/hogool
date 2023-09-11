import 'package:flutter/material.dart';
import 'package:hogool/core/utils/app_string.dart';

import '../core/themes/app_color.dart';

class NotificationsDetailsScreen extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Padding(
          padding: const EdgeInsets.only(top: 30,right: 25,left: 25),
          child: Column(
            children: [
               Row(
                  children: [
                    Text(AppString.offerDetails,
                          style: TextStyle(
                            fontSize: 35,
                            color: AppColor.primaryColor,
                            fontWeight: FontWeight.bold
                          ),
                          ),

                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 20,left: 15,right: 15),
                  width: double.infinity,
                  height: 400,
    decoration: BoxDecoration(
          borderRadius:BorderRadius.all(Radius.circular(20)),
          color:AppColor.fillInputColor,
          ),
          child: Column(
            children: [
              Row(
                children: [
              Text(AppString.investorName,
                  style:TextStyle(
                    color: AppColor.titleColor,
                    fontSize: 18
                  ),
                  ),
                  Text("احمد دفع الله" ,
                  style:TextStyle(
                    color: AppColor.titleColor,
                    fontSize: 18
                  ),
                  ),


                ],
              ),
              SizedBox(height: 20,),
               Row(
                children: [
                    Text( AppString.corn,
                  style:TextStyle(
                    color: AppColor.titleColor,
                    fontSize: 18
                  ),
                  ),
                  Text("القمح" ,
                  style:TextStyle(
                    color: AppColor.titleColor,
                    fontSize: 18
                  ),
                  ),
                ],
              ),
               SizedBox(height: 20,),
               Row(
                children: [
                     Text(AppString.durationInvesmnet,
                  style:TextStyle(
                    color: AppColor.titleColor,
                    fontSize: 18
                  ),
                  ),
                  Text("6 " ,
                  style:TextStyle(
                    color: AppColor.titleColor,
                    fontSize: 18
                  ),
                  ),
                  Text(AppString.months,
                  style:TextStyle(
                    color: AppColor.titleColor,
                    fontSize: 18
                  ),
                  ),
                ],
              ),
               SizedBox(height: 20,),
               Row(
                children: [
                   Text(AppString.desLand,
                  style:TextStyle(
                    color: AppColor.titleColor,
                    fontSize: 18
                  ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
               Expanded(
                child: Text("نبذة طويلة فيها تفاصيل عن طبيعة الارض الحيتم الزراعة فيها ونظام الري وكل حاجة: " ,
                  style:TextStyle(
                    color: AppColor.titleColor,
                    fontSize: 18
                  ),
                  ),
                ),
                SizedBox(height: 1,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                     Container(
                        margin: EdgeInsets.only(bottom: 20),
                        height: 35,
                        width: 100,
                        child: TextButton(
                                  style: ButtonStyle(
                                    backgroundColor:MaterialStateProperty.all( AppColor.primaryColor),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(9)
                                    ))
                                  ),
                                  onPressed: (){
                                   //////////////
                                   
                                   
                                  },
                                   child: Center(
                                     child: Text(AppString.accept,
                                     style: TextStyle(
                                      color: AppColor.backgroundColor,
                                      fontSize:13,
                                      fontWeight: FontWeight.bold
                                     ),
                                     ),
                                   )
                                    ,
                                   ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 20),
                        height: 35,
                        width: 100,
                        child: TextButton(
                                  style: ButtonStyle(
                                    backgroundColor:MaterialStateProperty.all( AppColor.backgroundColor),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(9)
                                    ))
                                  ),
                                  onPressed: (){
                                   //////////////
                                   
                                   
                                  },
                                   child: Center(
                                     child: Text(AppString.reject,
                                     style: TextStyle(
                                      color: AppColor.primaryColor,
                                      fontSize:13,
                                      fontWeight: FontWeight.bold
                                     ),
                                     ),
                                   )
                                    ,
                                   ),
                      ),
                  ],
                )
            ],
          ),
  )

  
            ],
          ),
        )
         ),
    );
  }
}