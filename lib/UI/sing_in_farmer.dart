import 'package:flutter/material.dart';
import 'package:hogool/widgets/customWidgets.dart';


class SignInScreen extends StatelessWidget {
  static String signInScreen ="/signIn";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child:Center(
                child:Icon(
                  Icons.accessibility,
                  color: Colors.green,
                )
                
                  
            
              ) 
            
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Expanded(
                flex: 6,
                child:Column(
                  children: [
                    CustomWidget.fieldFormWidget(true, testStirng, "اسم المستخدم", (){}, false, TextInputType.name),
                    SizedBox(height: 30,),
                    CustomWidget.fieldFormWidget(true, testStirng,"كلمة المرور ", (){}, false, TextInputType.name),
                  ],
                  
                )
              
              ),
            ),
          ],
        ),
      ),
    );
  }

  void testStirng(String h){

print(h);
}
}