import 'package:flutter/material.dart';

class CardInvestmentOffer extends StatelessWidget {

int id;
String titel;
int yield;
int duration;
String description;

CardInvestmentOffer({ required this.titel,required this.yield,required this.duration,required this.description,required this.id});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
     decoration: BoxDecoration(
      
        borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      margin: EdgeInsets.only(right: 20,left: 20),
      child: Card(
        color: Color(0xffF0F9F1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Row(
          
          children: [
            Expanded(
              flex: 35,
              child:Container(
                width: double.infinity,
                height: double.infinity,
                padding: EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                 child: Image.asset("invsement.jpg",
                 fit:BoxFit.fill,
                 ),
                ),
              )
              ),
            Expanded(
              flex: 65,
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height:10 ,),
                  Text(titel,
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff4CAF50)
                  ),
                  ),
                  SizedBox(height:15,),
                  Row(
                    children: [
                      Expanded(
                        flex:1,
                        child:Row(
                          children: [
                            Text("العائد : ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize:15
                            ),
                            ),
                            Text(yield.toString()+"%",
                            style: TextStyle(
                              fontSize:15
                            ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex:1,
                        child:Row(
                          children: [
                            Text("المدة : ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize:15
                            ),
                            ),
                            Text(duration.toString()+" "+"أشهر",
                            style: TextStyle(
                              fontSize:15
                            ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Expanded(
                    flex: 60,
                    child: Text(description+"...",
                    style: TextStyle(
                      fontSize: 13
                    ),
                    ),
                  ),
                  Expanded(
                    flex: 40,
                    child: Row(
                      children: [
                        Expanded(child:Container()),
                        Container(
                          margin: EdgeInsets.only(left: 20,bottom: 10),
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
                           child: Text("مزيد من التفاصيل",
                           style: TextStyle(
                            color: Colors.white,
                            fontSize:12,
                            fontWeight: FontWeight.bold
                           ),
                           )
                            ,
                           ),
                        ),
                      ],
                    )
                  ),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}