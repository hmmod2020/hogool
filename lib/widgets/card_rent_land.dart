import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hogool/UI/land_search.dart';
import 'package:hogool/model/land_model.dart';

import '../UI/land_screen.dart';
import '../model/card_land_model.dart';


class CardRentLand extends StatelessWidget {

 LandData data ;
CardRentLand({required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      margin: EdgeInsets.only(right: 15,left: 15),
      child: Expanded(
        child: Card(
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
        color:Color(0xffF0F9F1),
         child:Column(
          children: [
            Expanded(
              flex: 2,
              child:Row(
                children: [
                  Expanded(
                    flex: 2,
                    child:Container(
                      margin: EdgeInsets.only(right: 12,top: 10),
                      child: Text(data.title.toString(),
                      style: TextStyle(
                      
                        color: Color(0xff4CAF50),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      ),
                    ),
                    
                    ),
                   Expanded(
                    flex: 1,
                    child: Container(
                        margin: EdgeInsets.only(top: 10),
                      child: Text("المدة : "+" "+data.duration.toString()+" اشهر " ,
                      style:TextStyle(
                        fontSize: 17,
                      ),
                      )

                      )),
                ],
              )
            ),
            Expanded(
              flex: 5,
              child:Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text( data.description!+"..."),
              ),
            ),
            Expanded(
              flex: 3,
              child:Center(
                
                child:Container(
                  width: 100,
                  height: 40,
                  child: TextButton(
                              style: ButtonStyle(
                                backgroundColor:MaterialStateProperty.all( Color(0xff4CAF50)),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)
                                ))
                              ),
                              onPressed: (){
                               //////////////
                                Navigator.push(context, CupertinoPageRoute(builder: (context)=>LandScreen()));
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
              )
            ),
            

          ],
         ),
        ),
      ),
    );
  }
}