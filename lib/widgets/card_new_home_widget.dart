import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class CardNewHome extends StatelessWidget {
  int id ;
  String titleNew;
  String description;

     CardNewHome({required this.id,super.key, required this.titleNew,required this.description});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
     
      margin: EdgeInsets.only(right: 15,left: 15),
      width: double.infinity,
      height: 230,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        color:Color(0xffF0F9F1),
        
        child: Column(
          children: [
            Expanded(
              flex:25 ,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 30),
                  Text(titleNew ,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                    
                  ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex:45 ,
              child: Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Text(description+"..."),
              ),
            ),
            Expanded(
              flex:30 ,
              child: Center(
                child: Container(
                  width: 130,
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
                               ///for show all news
                              },
                               child: Text("اقرأ المزيد",
                               style: TextStyle(
                                color: Colors.white,
                                fontSize:13,
                                fontWeight: FontWeight.bold
                               ),
                               )
                                ,
                               ),
                           ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}