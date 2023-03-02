import 'package:flutter/material.dart';

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
                    Text("تفاصيل عرض العمل ",
                          style: TextStyle(
                            fontSize: 35,
                            color: Color(0xff4CAF50),
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
          color:Color(0xffF0F9F1),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Text("اسم المستثمر : " ,
                  style:TextStyle(
                    color: Colors.black,
                    fontSize: 18
                  ),
                  ),
                  Text("احمد دفع الله" ,
                  style:TextStyle(
                    color: Colors.black,
                    fontSize: 18
                  ),
                  ),


                ],
              ),
              SizedBox(height: 20,),
               Row(
                children: [
                    Text("المحصول : " ,
                  style:TextStyle(
                    color: Colors.black,
                    fontSize: 18
                  ),
                  ),
                  Text("القمح" ,
                  style:TextStyle(
                    color: Colors.black,
                    fontSize: 18
                  ),
                  ),
                ],
              ),
               SizedBox(height: 20,),
               Row(
                children: [
                     Text("مدة الاستمثار  : " ,
                  style:TextStyle(
                    color: Colors.black,
                    fontSize: 18
                  ),
                  ),
                  Text("6 " ,
                  style:TextStyle(
                    color: Colors.black,
                    fontSize: 18
                  ),
                  ),
                  Text("أشهر " ,
                  style:TextStyle(
                    color: Colors.black,
                    fontSize: 18
                  ),
                  ),
                ],
              ),
               SizedBox(height: 20,),
               Row(
                children: [
                   Text("نبذةعن الارض الزراعية : " ,
                  style:TextStyle(
                    color: Colors.black,
                    fontSize: 18
                  ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
               Expanded(
                child: Text("نبذة طويلة فيها تفاصيل عن طبيعة الارض الحيتم الزراعة فيها ونظام الري وكل حاجة: " ,
                  style:TextStyle(
                    color: Colors.black,
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
                                    backgroundColor:MaterialStateProperty.all( Color(0xff4CAF50)),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(9)
                                    ))
                                  ),
                                  onPressed: (){
                                   //////////////
                                   
                                   
                                  },
                                   child: Center(
                                     child: Text("قبول",
                                     style: TextStyle(
                                      color: Colors.white,
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
                                    backgroundColor:MaterialStateProperty.all( Colors.white),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(9)
                                    ))
                                  ),
                                  onPressed: (){
                                   //////////////
                                   
                                   
                                  },
                                   child: Center(
                                     child: Text("رفض",
                                     style: TextStyle(
                                      color: Color(0xff4CAF50),
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