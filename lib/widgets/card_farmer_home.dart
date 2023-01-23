import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardFarmerHome extends StatelessWidget {
 int id;
 String image;
 String farmerName;
 String location;
 int exepiernce;
 List<String> crops;
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
        color:Color(0xffF0F9F1),
        child: Row(
          children: [
            Expanded(
              flex: 35,
              child:Container(
                margin: EdgeInsets.only(top: 15,bottom: 15,right: 10),
               height: double.infinity,
                child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(image,
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
                           Text(farmerName,
                           style: TextStyle(
                            color: Color(0xff4CAF50),
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
                              Text("الموقع : "),
                              Text(location),
                            ],
                          ),
                          Row(
                            children: [
                              Text("الخبرة : "),
                              Text(exepiernce.toString()+" "),
                              Text("سنوات")
                              
                            ],
                          ),
                          Row(
                            children: [
                              Text(" المحاصيل : "),
                              Text(crops[0]+" "+", "),
                              Text(crops[1]+" "+", "),
                              Text(crops[2]+"  "),
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
                              backgroundColor:MaterialStateProperty.all( Color(0xff4CAF50)),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)
                              ))
                            ),
                            onPressed:(){
               Navigator.push(context, CupertinoPageRoute(builder: (context)=>screenRoute));

                            } ,
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