import 'package:chopper/chopper.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hogool/UI/sing_in_farmer.dart';
import 'package:hogool/model/sign_up_model.dart';
import 'package:hogool/widgets/dilog_done.dart';
import '../widgets/dilog_error.dart';
import '../modelView/sing_up_farmer.dart';
import '../widgets/customWidgets.dart';
import '../widgets/dilog_loading.dart';

class SingUpFarmer extends StatelessWidget {
var modelView =SignUPFarmerModelView();
var formKay=GlobalKey<FormState>();
var testText="hmmod";


static String singUpFarmer ="/singUpFarmer";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
               margin: EdgeInsets.only(top: 25),
                child: Center(
                 child:Text(
                   "تسجيل حساب المزارع ",
                   style: TextStyle(
                     color: Color(0xff4CAF50),
                     fontSize: 30,
                     fontWeight:FontWeight.bold ),
                 ),),
              ),
              Form(
                key:formKay,
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        CustomWidget.fieldFormWidget(true,testStirng,"الإسم",modelView.nameIsValid,false,TextInputType.name),
                        SizedBox(height:30),
                         CustomWidget.fieldFormWidget(false,testStirng,"اسم المستخدم",modelView.userNameIsValid,false,TextInputType.name),
                         SizedBox(height:30),
                         CustomWidget.fieldFormWidget(false,testStirng,"البريد الإلكتروني",modelView.emailIsValid,false,TextInputType.emailAddress),
                         SizedBox(height:30),
                         CustomWidget.fieldFormWidget(false,testStirng,"كلمة المرور ",modelView.passwordIsValid,true,TextInputType.name),
                         SizedBox(height:30),
                         CustomWidget.fieldFormWidget(false,testStirng,"تأكيد كلمة المرور",modelView.RepasswordIsValid,true,TextInputType.name),
                         SizedBox(height:30),
                         Container(
                          width: double.infinity,
                          height: 60,
                           child: TextButton(
                            style: ButtonStyle(
                              backgroundColor:MaterialStateProperty.all( Color(0xff4CAF50)),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)
                              ))
                            ),
                            onPressed: (){
                              if (formKay.currentState!.validate()){
                                  showDialog(
    barrierDismissible:false ,
    context:context, builder: ((context) {
    return LoadingDilog();
    }));
                                  modelView.signUp(context);
                              }
                            },
                             child: Text("تسجيل الحساب",
                             style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold
                             ),
                             )
                              ,
                             ),
                         ),
                          SizedBox(height:10),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                              InkWell(
                                child:Text("قم بتسجيل الدخول ",
                                style: TextStyle(
                                  color:  Color(0xff4CAF50),
                                  fontSize: 20,
                                ),
                                ) ,
                                onTap: (){
                                  Navigator.of(context).popAndPushNamed(SignInScreen.signInScreen);
                                },
                              ),
                              Text(
                              "لديك حساب ؟ ",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                              ),
                          ],
                         )

                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }

void testStirng(String h){

print(h);
}
}


/**showDialog(
     barrierDismissible:false ,
    context:context, builder: ((context) {
    return ErrorDilog();
    })); */