import 'package:flutter/material.dart';

class CardMyOffers extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Container(
          width: double.infinity,
         height: 340, 
         decoration: BoxDecoration(
          borderRadius:BorderRadius.all(Radius.circular(20)),
          color:Color(0xffF0F9F1)
          ),
          child:Container(
             margin: EdgeInsets.only(right: 25,top: 25,left: 25),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                        child: Image.asset("assets/green.png"),
                      ),
                      SizedBox(width: 10,),
                      Text("مقبول",
                      style:TextStyle(
                        color: Color(0xff4CAF50),
                        fontSize: 20
                      ),
                      ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text("وصف العرض",
                      style:TextStyle(
                        color: Color(0xff4CAF50),
                        fontSize: 22
                      ),
                      ),),
                      Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("300000 -",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.amber
                          ),
                          ),
                          Text("شهريا",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.amber
                          ),
                          ),
                        ],
                      )),
                  ],
                ),
                SizedBox(height: 10,),
                Expanded(
                  child:Text("معلومات هنا بتتكلم عن الحاصل معلوماتمعلومات هنا بتتكلم عن هنبتتكلم عن الحاصل معلومات ",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black
                          ),
                          ), ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text("نوع الري : " ,
                      style:TextStyle(
                        color: Color(0xff4CAF50),
                        fontSize: 22
                      ),
                      ),
                          Text("محوري",
                      style:TextStyle(
                        color: Colors.black,
                        fontSize: 16
                      ),
                      ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text("مالك الارض :" ,
                      style:TextStyle(
                        color: Color(0xff4CAF50),
                        fontSize: 22
                      ),
                      ),
                          Text("محمد البدري",
                      style:TextStyle(
                        color: Colors.black,
                        fontSize: 16
                      ),
                      ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                                       Text("اسم المزارع :" ,
                      style:TextStyle(
                        color: Color(0xff4CAF50),
                        fontSize: 22
                      ),
                      ),
                          Text("احمد دفع الله",
                      style:TextStyle(
                        color: Colors.black,
                        fontSize: 16
                      ),
                      ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                               Expanded(
                      flex: 1,
                      child:Row(
                        
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            child:Image.asset("assets/marker.png")
                          ),
                          SizedBox(width: 5,),
                          Text("الخرطوم",
                      style:TextStyle(
                        color: Colors.black,
                        fontSize: 16
                      ),
                      ),
                        ],
                      ) ),
                      Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            child:Image.asset("assets/Phone.png")
                          ),
                          SizedBox(width: 5,),
                          Text("0117034643",
                      style:TextStyle(
                        color: Colors.black,
                        fontSize: 16
                      ),
                      )
                        ],
                      )),
                            ],
                          ),
                          SizedBox(height: 20,)
              ],
            ),
          ),
          )
      ),
    );
  }
}