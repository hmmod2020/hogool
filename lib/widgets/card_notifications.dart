import 'package:flutter/material.dart';
import 'package:hogool/core/utils/app_string.dart';

import '../core/themes/app_color.dart';

class CardNotificationsFramer extends StatelessWidget {
 
 late String nameInvestor;

  @override
  Widget build(BuildContext context) {
    nameInvestor="محمد البدري";
    return Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
          borderRadius:BorderRadius.all(Radius.circular(20)),
          color:AppColor.fillInputColor,

          ),
          child: Column(
           
            children: [
              SizedBox(height: 15,),
              Expanded(child:
              Text("ارسل اليك المستثمر ${nameInvestor} طلب عمل ",
              style: TextStyle(
                color: AppColor.titleColor,
                fontSize: 20,
              ),
              
              )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   Container(
                        margin: EdgeInsets.only(bottom: 20),
                        height: 35,
                        width: 80,
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
                                     child: Text(AppString.moreDetails,
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
                    
                ],
              )
            ],
          ),
    );
  }
}