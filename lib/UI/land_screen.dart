import 'package:flutter/material.dart';
import 'package:hogool/core/utils/app_string.dart';

import '../core/themes/app_color.dart';

class LandScreen extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Stack(
          children: [
            Column(
              children: [
                Expanded(
                  flex: 1,
                  child:Container(
                    child: ClipRRect(
                
                borderRadius:BorderRadius.all(Radius.circular(10)) ,
            child: Image.asset('assets/farm.png',
            fit: BoxFit.fill,
            ),
        ),
                  ),
                  ),
              ],
            ),
            Column(
              children: [
                Expanded(
                  flex: 37,
                  child: Container(
                    color: Colors.transparent,
                  )
                  ),
                 Expanded(
                  flex: 63,
                  child:Container(
                    decoration:BoxDecoration(
                      color: AppColor.backgroundColor,
                      borderRadius:BorderRadius.only(topLeft: Radius.circular(25),topRight:Radius.circular(25),
                      
                      )
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          flex:15,
                          child: Container(
                          
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child:Row(
                                    
                                    children: [
                                       Container(
              width: 25,
              height: 25,
              margin: EdgeInsets.only(top: 20,right: 20),
              decoration:BoxDecoration(
                color: AppColor.backgroundColor,
                borderRadius: BorderRadius.all(Radius.circular(100))
              ),
              child: Center(
                child: Image.asset("assets/User.png")
              ),
            ),
SizedBox(width: 10,),
           Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              AppString.farmerName,
              style:TextStyle(
                color: AppColor.titleColor,
                fontSize: 18
              ),
              )),
                                    ],
                                  )
                                  ),
                                 Expanded(
                                  flex: 1,
                                  child: Container(
                                    margin: EdgeInsets.only(left: 20),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Row(
                                      
                                      children: [
                                         Container(
                                          
              width: 25,
              height: 25,
              margin: EdgeInsets.only(top: 20,right: 20),
              decoration:BoxDecoration(
                color: AppColor.backgroundColor,
                borderRadius: BorderRadius.all(Radius.circular(100))
              ),
              child: Center(
                child: Image.asset("assets/marker.png")
              ),
            ),
SizedBox(width: 10,),
           Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              "الخرطوم",
              style:TextStyle(
                color: AppColor.titleColor,
                fontSize: 18
              ),
              )),
                                      ],
                                    )
                                      ],
                                    ),
                                  ))
                              ],
                            ),
                          )),
                          ////sec 1
                          Expanded(
                          flex:65,
                          child:Padding(
                            padding: const EdgeInsets.only(left:20,right: 20),
                            child: Column(
                              children: [
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Text(AppString.durationRent,
                                    style: TextStyle(
                                      color: AppColor.primaryColor,
                                      fontSize: 15
                                    ),
                                    ),
                                    Text(" 6",
                                    style: TextStyle(
                                      color: AppColor.titleColor,
                                      fontSize: 15
                                    ),
                                    ),
                                    Text(AppString.months,
                                    style: TextStyle(
                                      color: AppColor.titleColor,
                                      fontSize: 15
                                    ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5,),
                                 Row(
                                  children: [
                                      Text(AppString.irrigation_typemodels,
                                    style: TextStyle(
                                      color: AppColor.primaryColor,
                                      fontSize: 15
                                    ),
                                    ),
                                    Text("محوري",
                                    style: TextStyle(
                                      color: AppColor.titleColor,
                                      fontSize: 15
                                    ),
                                    ),
                                  ],
                                 ),
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Container(
                                      width: 35,
                                      height: 35,
                                      child: Image.asset("assets/Coins.png"),
                                    ),
                                      Text("70000",
                                    style: TextStyle(
                                      color: AppColor.titleColor,
                                      fontSize: 15
                                    ),
                                    ),
                                     Text(AppString.forMonth,
                                    style: TextStyle(
                                      color: AppColor.titleColor,
                                      fontSize: 15
                                    ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Text(AppString.landDescription,
                                    style: TextStyle(
                                      color: AppColor.titleColor,
                                      fontSize: 15
                                    ),
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child:Text("وصف الارضوصف الارض:وصف الارض:وصف الارض:وصف الارض:وصف الارض:وصف الارض:وصف الارض:وصف الارض:وصف الارض:وصف الارض:وصف الارض::وصف الارضوصف الارض:وصف الارض:وصف الارض:وصف الارض:وصف الارض:وصف الارض:وصف الارض:وصف الارض:وصف الارض:وصف الارض:وصف الارض::")
                                
                                ),
                              ],
                            ),
                          )
                          
                          ),
                         //sec2
                          Expanded(
                          flex:25,
                          child: Container(
                           child: Center(
                            child: Container(
                width: 200,
                height: 60,
                child: TextButton(
                              style: ButtonStyle(
                                backgroundColor:MaterialStateProperty.all( AppColor.primaryColor),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)
                                ))
                              ),
                              onPressed: (){
                               
                              },
                               child: Text(AppString.rentRequest,
                               style: TextStyle(
                                color: AppColor.backgroundColor,
                                fontSize: 25,
                                fontWeight: FontWeight.bold
                               ),
                               )
                                ,
                               ),
              ),
                           ),
                          )),
                          //sec 3
                      ],
                    ),
                  )
                  ),
              ],
            ),
            InkWell(
              child: Container(
                width: 35,
                height: 35,
                margin: EdgeInsets.only(top: 20,right: 20),
                decoration:BoxDecoration(
                  color: AppColor.backgroundColor,
                  borderRadius: BorderRadius.all(Radius.circular(100))
                ),
                child: Center(
                  child: Image.asset("assets/back_t.png")
                ),
              ),
              onTap: (){
                Navigator.of(context).pop();
              },
            )

          ],
        )
        
        ),
    );
  }
}