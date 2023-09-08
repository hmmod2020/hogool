import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../core/themes/app_color.dart';

class SearchingDilog extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Dialog(
  
      shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      child: Container(
        width: 70,
        height: 220,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Container(
            margin: EdgeInsets.only(bottom: 10),
            width: 80,
            height: 50,
            child: Lottie.asset(
              "assets/searching.json"
            ,repeat: true,
            fit: BoxFit.cover
            )
            ,
           ),
           Container(
            margin: EdgeInsets.only(top: 30),
             child: Text("جاري البحث",
             style: TextStyle(
              color: AppColor.primaryColor,
              fontSize:20,
              fontWeight: FontWeight.bold
             ),
             ),
           )
          ],
        )
      ),
    );
  }
}





