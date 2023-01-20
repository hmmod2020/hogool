import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hogool/UI/farmer_search_screen.dart';

import 'card_farmer_home.dart';


class ShowHomeWidget extends StatelessWidget {
 

 String titel;
 String route;
 ShowHomeWidget({required this.titel,required this.route});

  @override
  Widget build(BuildContext context) {
    return Column(
    children: [
      Row(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(right: 15),
              child:Text(titel,
          style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold
          ),
          ),
            ),
            ),
          Expanded(child:
           Column(
            crossAxisAlignment: CrossAxisAlignment.end,
             children: [
               InkWell(
                 child: Container(
                  margin: EdgeInsets.only(left: 25),
                    child:Text("عرض الكل",
                         style: TextStyle(
                    color: Color(0xff4CAF50),
                    fontSize: 17,
                    fontWeight: FontWeight.bold
                         ),
                         ),
                  ),
                  onTap:(){
                    Navigator.push(context, CupertinoPageRoute(builder: (context)=>FarmerSearchScreen()));
                  },
               ),
             ],
           ),),
        ],
      )
      
    ],

    );
  }
}