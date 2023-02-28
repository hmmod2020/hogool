import 'package:flutter/material.dart';
import 'package:hogool/model/new_screen_viewModel.dart';


class NewScreen extends StatelessWidget {

var viewModel=newViewModel();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
      children: [
        Expanded(
          flex: 4,
          child: Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20,right: 20,),
                  child: Text("أحدث الأخبار",
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xff4CAF50),
                    fontWeight: FontWeight.bold
                  ),
                  )),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Card(
                        child:  ClipRRect(
                                  borderRadius:BorderRadius.all(Radius.circular(10)) ,
                              child: Image.asset('khartoum.jpg',
                              fit: BoxFit.cover,
                              ),
                          ),
                      ),
                    ),
                  )
              ],
            ),
          )),
 Expanded(
          flex: 6,
          child: Container(
            child: Column(
               crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  
                  margin: EdgeInsets.only(top: 20,right: 20,bottom: 15),
                  child: Text("عنوان الخبر مفروض يكون هنا ",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),
                  )),

                  Container(
                    padding: EdgeInsets.only(right: 20,left: 20),
                    child: Expanded(
                      child:Text("معلومات هنا بتتكلم عن الحاصل معلومات هنا تتكلم عن الحاصل. علومات هنا بتتكلم عن الحاصل معلومات هنا تتكلم عن الحاصلمعلومات ها بتتكلم عن الحاصل معلومات هنا تتكلم عن الحاصل. معلومات هنا بتتكلم ع الحاصل معلومات هنا تتكلم عن الحاصل.معلومات هنا بتتكلم عن الحاصل معلومات هنا تتكلم عن الحاصل. معلومات هنا بتتكلم عن الحاصل علومات هنا تتكلم عن الحاصل.معلومات هنا بتتكلم عن الحاصل معلومات ها تتكلم عن الحاصل. معلومات هنا بتتكلم عن الحاصل معلومات هنا تتكلم عن الحاصل.",
                      style: TextStyle(
                        fontSize: 19,
                        color: Color(0xFF51545B)
                      ),
                      ) 
                    ),
                  )
              ],
            ),
          )),
      ]

      
      ,
    ),
      ),
    );
  }
}