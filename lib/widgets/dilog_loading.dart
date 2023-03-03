import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoadingDilog extends StatelessWidget {
   String? title;
  LoadingDilog({this.title});
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
              "assets/loading.json"
            ,repeat: true,
            fit: BoxFit.cover
            )
            ,
           ),
           Container(
            margin: EdgeInsets.only(top: 30),
             child: Text(title.toString(),
             style: TextStyle(
              color: Color(0xff4CAF50),
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





