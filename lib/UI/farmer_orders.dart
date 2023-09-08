import 'package:flutter/material.dart';

import '../core/themes/app_color.dart';
import '../widgets/card_farmer_request.dart';
import '../widgets/card_farmer_request2.dart';
import '../widgets/card_farmer_request3.dart';

class FarmerOrders extends StatefulWidget {
  const FarmerOrders({super.key});

  @override
  State<FarmerOrders> createState() => _FarmerOrdersState();
}

class _FarmerOrdersState extends State<FarmerOrders> {
  int _selectedItem=0;
  List<Widget> screens=[Container(
    child: Center(child: CardFarmerRequest1()),
  ),Container(child: Center(child: CardFarmerRequest2()),),Container(child: Center(child: CardFarmerRequest3()),)];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 25,
              child:Column(
                children: [
                  SizedBox(height: 60,),
                  Row(
                    children: [
                      InkWell(
              child: Container(
                width: 35,
                height: 35,
                margin: EdgeInsets.only(right: 20),
                decoration:BoxDecoration(
                  color: AppColor.fillInputColor,
                  borderRadius: BorderRadius.all(Radius.circular(100))
                ),
                child: Center(
                  child: Image.asset("assets/back_t.png")
                ),
              ),
              onTap: (){
                Navigator.of(context).pop();
              },
            ),
            SizedBox(width: 10,),
            Text("طلبات العمل",
            style: TextStyle(
              fontSize: 30,
              color: AppColor.primaryColor,
              fontWeight: FontWeight.bold
            ),
            )
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      button1(),
                      button2(),
                      button3()
                    ],
                  )
                ],
              )
            ),
            Expanded(
              flex: 75,
              child:screens[_selectedItem]
            ),
          ],
        ),
      ),
    );
  }

  Widget button1(){
    int itemIndex=0;
    int backgroundColor=0;
    int textColor=0;
    if (_selectedItem==itemIndex){
      backgroundColor=0xff4CAF50;
      textColor=0xffFFFFFF;
    }else{
      backgroundColor=0xffF0F9F1;
      textColor=0xff4CAF50;
    }
    return Container(
      width: 100,
      height: 40,
      child:TextButton(
                              style: ButtonStyle(
                                backgroundColor:MaterialStateProperty.all( Color(backgroundColor)),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)
                                ))
                              ),
                              onPressed: (){
                               setState(() {
                                 _selectedItem=itemIndex;
                               });
                              },
                               child: Text("مقبولة",
                               style: TextStyle(
                                color: Color(textColor),
                                fontSize: 15,
                               
                               ),
                               )
                                ,
                               ),
    );
  }
  Widget button2(){
    int itemIndex=1;
    int backgroundColor=0;
    int textColor=0;
    if (_selectedItem==itemIndex){
      backgroundColor=0xff4CAF50;
      textColor=0xffFFFFFF;
    }else{
      backgroundColor=0xffF0F9F1;
      textColor=0xff4CAF50;
    }
    return Container(
      width: 100,
      height: 40,
      child:TextButton(
                              style: ButtonStyle(
                                backgroundColor:MaterialStateProperty.all( Color(backgroundColor)),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)
                                ))
                              ),
                              onPressed: (){
                               setState(() {
                                 _selectedItem=itemIndex;
                               });
                              },
                               child: Text("مرفوضة",
                               style: TextStyle(
                                color: Color(textColor),
                                fontSize: 15,
                                
                               ),
                               )
                                ,
                               ),
    );
  }
  Widget button3(){
    int itemIndex=2;
    int backgroundColor=0;
    int textColor=0;
    if (_selectedItem==itemIndex){
      backgroundColor=0xff4CAF50;
      textColor=0xffFFFFFF;
    }else{
      backgroundColor=0xffF0F9F1;
      textColor=0xff4CAF50;
    }
    return Container(
      width: 100,
      height: 40,
      child:TextButton(
                              style: ButtonStyle(
                                backgroundColor:MaterialStateProperty.all( Color(backgroundColor)),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)
                                ))
                              ),
                              onPressed: (){
                               setState(() {
                                 _selectedItem=itemIndex;
                               });
                              },
                               child: Text("معقلة",
                               style: TextStyle(
                                color: Color(textColor),
                                fontSize: 15,
                                
                               ),
                               )
                                ,
                               ),
    );
  }
}