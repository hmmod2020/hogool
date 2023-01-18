import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';


class SlideHogool extends StatelessWidget {

String image;
String text;


SlideHogool({required this.image,required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 7,left: 7),
       width: 350,
            height: 230,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: ClipRRect(
                
                borderRadius:BorderRadius.all(Radius.circular(10)) ,
            child: Image.asset(image,
            fit: BoxFit.cover,
            
            ),
        ),
          ),
          Container(
            
            width: 350,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
             color:Colors.black.withOpacity(0.25)
            ), 
          ),
           Center(
             child: Container(
              alignment: AlignmentDirectional.centerStart,
              margin: EdgeInsets.only(top: 120,right: 20),
              child:AnimatedTextKit(
                repeatForever: true,
                 animatedTexts: [
                TypewriterAnimatedText(text,
                textStyle: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold
              ),
                )
                 ],
              ),
             ),
           ),
        ],
      ),
    );
  }
}
