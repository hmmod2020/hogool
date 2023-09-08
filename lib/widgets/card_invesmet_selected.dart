import 'package:flutter/material.dart';

import '../core/themes/app_color.dart';

class CardInvesmentSelected extends StatelessWidget {
  const CardInvesmentSelected({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
         height: 220, 
         decoration: BoxDecoration(
          borderRadius:BorderRadius.all(Radius.circular(20)),
          color:AppColor.fillInputColor,
          
          ),
          child:Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Column(
              children: [
                 SizedBox(height: 25,),
                Row(
                  children: [
                    Image.asset("assets/marker.png"),
                    SizedBox(width: 8,),
                    Text("الخرطوم",
                    style:TextStyle(
                      color: AppColor.primaryColor,
                      fontSize: 18,
                    ),
                    )
                  ],
                ),
                SizedBox(height: 20,),
                 Row(
                  children: [
                     Text("اسم المشروع",
                    style:TextStyle(
                      color: AppColor.primaryColor,
                      fontSize: 18,
                    ),
                    ),
                    SizedBox(width: 8,),
                    Text("مشروع زراعي سوبا",
                    style:TextStyle(
                      color: AppColor.primaryColor,
                      fontSize: 15,
                    ),
                    )
                  ],
                ),
                SizedBox(height: 20,),
                 Row(
                  children: [
                     Text("طريقة الري",
                    style:TextStyle(
                      color: AppColor.primaryColor,
                      fontSize: 18,
                    ),
                    ),
                    SizedBox(width: 8,),
                    Text("مشروع زراعي سوبا",
                    style:TextStyle(
                      color: AppColor.primaryColor,
                      fontSize: 15,
                    ),
                    )
                  ],
                ),
                  SizedBox(height: 20,),
                   Container(
                        margin: EdgeInsets.only(bottom: 20),
                        height: 35,
                        width: 120,
                        child: TextButton(
                                  style: ButtonStyle(
                                    backgroundColor:MaterialStateProperty.all( AppColor.primaryColor),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)
                                    ))
                                  ),
                                  onPressed: (){
                                   //////////////
                                   
                                   ///show faremer by id
                                  },
                                   child: Center(
                                     child: Text("ارسال طلب عمل",
                                     style: TextStyle(
                                      color: Colors.white,
                                      fontSize:12,
                                      fontWeight: FontWeight.bold
                                     ),
                                     ),
                                   )
                                    ,
                                   ),
                      ),
              ],
            ),
          )
          );
  }
}

//  Padding(
          //   padding: const EdgeInsets.only(left: 15,right: 15),
          //   child: Column(
          //     children: [
          //       SizedBox(height: 35,),
          //       Column(
          //         children: [
          //       Row(
          //         children: [
          //           Container(
          //             width: 30,
          //             height: 30,
          //             child: Image.asset("assets/x-circle.png"),
          //           ),
          //           SizedBox(width: 15,),
          //           Text("أختر المشروع ",
          //           style: TextStyle(
          //             color: AppColor.primaryColor,
          //             fontSize: 25
          //           ),
          //           )
          //         ],
          //       ),
          //         ],
          //       ),
          //     ],
          //   ),
          // ),