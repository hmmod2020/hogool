import 'package:flutter/material.dart';

class CardFarmerRequest3 extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Container(
         height: 290, 
         decoration: BoxDecoration(
          borderRadius:BorderRadius.all(Radius.circular(20)),
          color:Color(0xffF0F9F1)
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
                      color: Color(0xff4CAF50),
                      fontSize: 22,
                      fontWeight: FontWeight.bold           
                            ),
                    )
                   ),
                   Expanded(
                    flex: 1,
                    child: Container(
                      child: Image.asset("assets/gray.png"),
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
                                    backgroundColor:MaterialStateProperty.all( Color(0xff4CAF50)),
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