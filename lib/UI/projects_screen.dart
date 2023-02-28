import 'package:flutter/material.dart';

class ProjectsScreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                  margin: EdgeInsets.only(top: 30,right: 20,bottom: 10),
                  child: Text("معرض الأعمال",
                  style: TextStyle(
                    fontSize: 40,
                    color: Color(0xff4CAF50),
                    fontWeight: FontWeight.bold
                  ),
                  )),
      buttonProject("عروضي",Container()),
      SizedBox(height: 20,),
      buttonProject("الأراضي",Container()),
      SizedBox(height: 20,),
      buttonProject("طلبات العمل",Container()),
      SizedBox(height: 20,),
      buttonProject("المشاريع",Container()),
      SizedBox(height: 40,),

            Center(
              child: Container(
                width: 250,
                height: 70,
                child: TextButton(
                              style: ButtonStyle(
                                backgroundColor:MaterialStateProperty.all( Color(0xff4CAF50)),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)
                                ))
                              ),
                              onPressed: (){
                               
                              },
                               child: Text("إنشاء عرض استثماري",
                               style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold
                               ),
                               )
                                ,
                               ),
              ),
            )
  
          ],
        ),
      ),
    );
  }
Widget buttonProject(String titel,Widget screenRoute){

  return InkWell(
    child: Container(
      margin: EdgeInsets.only(right: 20,left: 20,),
      height: 90,
      color:Color(0xffF0F9F1) ,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 15,left: 30),
            width: 30,
            height: 30,
            child:Image.asset("assets/orders.png", fit: BoxFit.cover,),
          ),
          Text(titel,
          style:TextStyle(
            color: Colors.black,
            fontSize: 30,
          ),
          )
       
      
         
        ],
      ),
    ),
    onTap: (){},
  );
}

}