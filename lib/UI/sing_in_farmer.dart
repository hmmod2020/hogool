import 'package:flutter/material.dart';
import 'package:hogool/UI/homeNav.dart';
import 'package:hogool/modelView/sign_in_modelView.dart';
import 'package:hogool/network/global_data.dart';
import 'package:hogool/network/network_service.dart';
import 'package:hogool/widgets/customWidgets.dart';
import 'package:hogool/widgets/dilog_error.dart';

import '../widgets/dilog_loading.dart';


class SignInScreen extends StatelessWidget {
  static String signInScreen ="/signIn";
  var formKay=GlobalKey<FormState>();
  var modelView=SignInModelView();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 70,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 130,
                  height: 130,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('icon.png'),
                    
                                ),
                ),
                SizedBox(height: 20,),
                Text("تسجيل الدخول ",
                style: TextStyle(
                  color: Color(0xff4CAF50),
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
                )
              ],
            ),
            Expanded(
              flex: 1,
              child:SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Form(
                    key:formKay,
                    child: Column(
                      children: [
                        CustomWidget.fieldFormWidget(true, testStirng, "اسم المستخدم", modelView.valdatitorUserName, false, TextInputType.name),
                        SizedBox(height: 30),
                         CustomWidget.fieldFormWidget(false, testStirng, "كلمة المرور", modelView.valdatitorPassword, true, TextInputType.text),
                         SizedBox(height: 100,),
                         Container(
                            width: double.infinity,
                            height: 70,
                             child: TextButton(
                              style: ButtonStyle(
                                backgroundColor:MaterialStateProperty.all( Color(0xff4CAF50)),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)
                                ))
                              ),
                              onPressed: (){
                                if (formKay.currentState!.validate()) {
                                   showDialog(
    barrierDismissible:false ,
    context:context, builder: ((context) {
    return LoadingDilog(title: "جاري تسجيل الدخول",);
    }));
                               var token= modelView.SignIn(context);
                                   
                                  //////write backend code here
                              }
                              },
                               child: Text("تسجيل الدخول ",
                               style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold
                               ),
                               )
                                ,
                               ),
                           ),
                      ],
                    ),
                  ),
                ),

              )
              
              )
          ],
        ),
      ),
    );
  }

  void testStirng(String h){

print(h);
}
}