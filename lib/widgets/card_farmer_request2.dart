import 'package:flutter/material.dart';

import '../core/themes/app_color.dart';

class CardFarmerRequest2 extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Container(
         height: 290, 
         decoration: BoxDecoration(
          borderRadius:BorderRadius.all(Radius.circular(20)),
          color:AppColor.fillInputColor
          ),
          child: Padding(
            padding: const EdgeInsets.only(right: 20,top: 10,left: 20),
            child: Column(
              children: [
                Row(
                  children: [
                   Expanded(
                    flex: 9,
                    child: 
                    Text("مشروع سوبا الزراعي",
                    style: TextStyle(
                      color: AppColor.primaryColor,
                      fontSize: 22,
                      fontWeight: FontWeight.bold           
                            ),
                    )
                   ),
                   Expanded(
                    flex: 1,
                    child: Container(
                      child: Image.asset("assets/red.png"),
                    )
                   ),
                  ],
                ),
                SizedBox(height: 10,),
                 Row(
                  children: [
                    Text("إسم المزارع :",
                    style: TextStyle(
                      
                    ),
                    ),
                    Text("محمد البدري ",
                    style: TextStyle(
                      
                    ),
                    )
                  ],
                ),
                  SizedBox(height: 10,),
                 Row(
                  children: [
                    Text("إسم المستثمر :",
                    style: TextStyle(
                      
                    ),
                    ),
                    Text("أحمد دفع الله",
                    style: TextStyle(
                      
                    ),
                    )
                  ],
                ),
                 SizedBox(height: 10,),
                 Row(
                  children: [
                    Text("موقع العمل",
                    style: TextStyle(
                      
                    ),
                    ),
                    Text("الخرطوم",
                    style: TextStyle(
                      
                    ),
                    )
                  ],
                ),
                 SizedBox(height: 10,),
                 Row(
                  children: [
                    Text("وصف المشورع :",
                    style: TextStyle(
                      
                    ),
                    ),
                    
                  ],
              
                ),
                Expanded(
                  child: Text("كل المعلومات الزيادة البتخص المزارع من طبيعة عمله في الزؤاعة وكيفيتها إلى حصاد المحصول والانتهاء منها.",
                    style: TextStyle(
                      
                    ),
                    )),
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 20),
                        height: 40,
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
                                     child: Text("مزيد من التفاصيل",
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
                    ),
              ],
            ),
          ),
        )        
         ),
    );
  }
}