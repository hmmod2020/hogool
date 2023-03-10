import 'package:flutter/material.dart';

class FarmerInfoScreen extends StatelessWidget {
  const FarmerInfoScreen({super.key});
//farmerInfoModle dataModel ;
 // FarmerInfoScreen({required this.dataModel});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                Expanded(
                  flex: 15,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container()),
                      Expanded(
                        flex: 1,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              child: Text("تفاصيل عن المزارع",
                                style: TextStyle(
                                  fontSize: 32,
                                  color: Color(0xff4CAF50),
                                  fontWeight: FontWeight.bold
                                ),
                                ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  ),
                  Expanded(
                  flex: 85,
                  child: Container(
                    width: double.infinity,
                    color: Colors.transparent,
                    child: Card(
                      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
        color:Color(0xffF0F9F1),
        child: Column(
          children: [
            Expanded(
              flex: 40,
              child:Container(
                child:Row(
          children: [
            Expanded(
              flex: 35,
              child:Container(
                margin: EdgeInsets.only(top: 15,bottom: 15,right: 10),
               height: double.infinity,
                child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset("mohammed.jpg",
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
                           Text("الحالة : ",
                           style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,

                           ),
                           )
                           
                           ,
                        ],
                      )
                    ),
                    Expanded(
                      flex: 70,
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Text("الموقع : "),
                              Text("الخرطوم"),
                            ],
                          ),
                          Row(
                            children: [
                              Text("الخبرة : "),
                              Text(5.toString()+" "),
                              Text("سنوات")
                              
                            ],
                          ),
                          
                          Row(
                            children: [
                              Expanded(child: Text("رقم الهاتف : "+"0117034643")),
                             
                              
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(child: Text("البريد الالكتروني : "+"mstar.hmmod@gmail.com"))
                            ],
                          ),
                        ],
                      )
                    ),
                    Expanded(
                      flex: 10,
                      child: Container(
                        padding: EdgeInsets.only(top: 3,bottom: 3,left: 7,right: 7),
                  width: 120,
                          height: 35,
                           child: Container()
                         )
                    ),

                  ],
                ),
              ),
            ),
          ],
        ), 
              )),
              Expanded(
              flex: 10,
              child:Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("محمد البدري محمد"
                    ,style: TextStyle(
                      fontSize: 17,
                      color: Color(0xff4CAF50),
                      fontWeight: FontWeight.bold
                    ),
                    )
                  ],
                ),
              )
              
              ),
              Expanded(
              flex: 30,
              child:Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right:20 ),
                      child: Row(
                        children: [
                          Text("نبذة عن المزارع : "),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(right:20 ),
                      child: Row(
                        children: [
                          Expanded(child: Text("انا مزارع خبير في زراعة البقوليات والخضر ولدي باكلورياس في فن التعامل مع النباتات والخضروات المسومية والغير موسمية تواصل معي فانا على اتم الاستعداد للعمل "+"....")),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Row(
                        ///لازم تصلح الغلط  المنطقي هنا 
                              children: [
                                Text(" المحاصيل : "),
                                Text("فلفل حار"+" "+", "),
                                Text("طماطم"+" "+", "),
                                Text("بطاطس"+"  "),
                              ],
                            ),
                    ),
                  ],
                ),
              )),
              Expanded(
              flex: 20,
              child:Container(
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Container(
                      width: 185,
                      height: 45,
                      child: TextButton(
                                  style: ButtonStyle(
                                    backgroundColor:MaterialStateProperty.all( Color(0xff4CAF50)),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)
                                    ))
                                  ),
                                  onPressed:(){
                                  } ,
                                   child: Center(
                                     child: Text("ارسال طلب عمل",
                                     style: TextStyle(
                                      color: Colors.white,
                                      fontSize:15,
                                      fontWeight: FontWeight.bold
                                     ),
                                     ),
                                   )
                                    ,
                                   ),
                    ),
                  ],
                ),
              )),
          ],
        ),
                    ),
                  )
                  )
              ],
               
            ),
          ),
        )
      ),
    );
  }
}










