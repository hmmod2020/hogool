import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hogool/core/utils/app_string.dart';

import '../core/themes/app_color.dart';

class CardFarmerHome extends StatelessWidget {
 int? id;
 String? image;
 String? farmerName;
 String? location;
 int? exepiernce;
 List<String>? crops;
Widget screenRoute;
 CardFarmerHome({required this.id,required this.image,required this.farmerName,required this.location,required this.exepiernce,required this.crops, required this.screenRoute});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15,right: 15),
      width: double.infinity,
      height: 230,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
        color:AppColor.fillInputColor,
        child: Row(
          children: [
            Expanded(
              flex: 35,
              child:Container(
                margin: EdgeInsets.only(top: 15,bottom: 15,right: 10),
               height: double.infinity,
                child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset("assets/"+image!,
          fit: BoxFit.fill,
          ),
      ),
              ),
            ),
            Expanded(
              flex: 65,
              child: Container(
                margin: EdgeInsets.only(top: 15,bottom: 15,right: 10),
                height: double.infinity,
                child: Column(
                  children: [
                    Expanded(
                      flex: 20,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                           Text(farmerName!,
                           style: TextStyle(
                            color: AppColor.primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,

                           ),
                           )
                           
                           ,
                        ],
                      )
                    ),
                    Expanded(
                      flex: 55,
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Text(AppString.location),
                              Text(location!),
                            ],
                          ),
                          Row(
                            children: [
                              Text(AppString.exepiernce),
                              Text(exepiernce.toString()+" "),
                              Text(AppString.years)
                              
                            ],
                          ),
                          Row(
                            children: [
                              Text(AppString.crops),
                              Text(crops![0]+" "+", "),
                              Text(crops![1]+" "+", "),
                              Text(crops![2]+"  "),
                            ],
                          ),
                        ],
                      )
                    ),
                    Expanded(
                      flex: 25,
                      child: Container(
                        padding: EdgeInsets.only(top: 3,bottom: 3,left: 7,right: 7),
                  width: 120,
                          height: 35,
                           child: TextButton(
                            style: ButtonStyle(
                              backgroundColor:MaterialStateProperty.all( AppColor.primaryColor),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)
                              ))
                            ),
                            onPressed:(){
               Navigator.push(context, CupertinoPageRoute(builder: (context)=>screenRoute));

                            } ,
                             child: Center(
                               child: Text(AppString.moreInfo,
                               style: TextStyle(
                                color: AppColor.backgroundColor,
                                fontSize:12,
                                fontWeight: FontWeight.bold
                               ),
                               ),
                             )
                              ,
                             ),
                         )
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}