import 'package:chopper/chopper.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hogool/UI/sing_in_farmer.dart';
import 'package:hogool/core/utils/app_string.dart';
import 'package:hogool/model/sign_up_model.dart';
import 'package:hogool/widgets/dilog_done.dart';
import '../core/themes/app_color.dart';
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
                 child:Text(AppString.signUpFarmer,
                                    style: TextStyle(
                     color: AppColor.primaryColor,
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
                        CustomWidget.fieldFormWidget(true,testStirng,AppString.name,modelView.nameIsValid,false,TextInputType.name),
                        SizedBox(height:30),
                         CustomWidget.fieldFormWidget(false,testStirng,AppString.login,modelView.userNameIsValid,false,TextInputType.name),
                         SizedBox(height:30),
                         CustomWidget.fieldFormWidget(false,testStirng,AppString.email,modelView.emailIsValid,false,TextInputType.emailAddress),
                         SizedBox(height:30),
                         CustomWidget.fieldFormWidget(false,testStirng,AppString.password,modelView.passwordIsValid,true,TextInputType.name),
                         SizedBox(height:30),
                         CustomWidget.fieldFormWidget(false,testStirng,AppString.v_password,modelView.RepasswordIsValid,true,TextInputType.name),
                         SizedBox(height:30),
                         Container(
                          width: double.infinity,
                          height: 60,
                           child: TextButton(
                            style: ButtonStyle(
                              backgroundColor:MaterialStateProperty.all( AppColor.primaryColor),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)
                              ))
                            ),
                            onPressed: (){
                              if (formKay.currentState!.validate()){
                                  showDialog(
    barrierDismissible:false ,
    context:context, builder: ((context) {
    return LoadingDilog(title: AppString.loadingSignUp,);
    }));
                                  modelView.signUp(context);
                              }
                            },
                             child: Text(AppString.signUp,
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
                                child:Text(AppString.plzSignIn,
                                style: TextStyle(
                                  color:  AppColor.primaryColor,
                                  fontSize: 20,
                                ),
                                ) ,
                                onTap: (){
                                  Navigator.of(context).popAndPushNamed(SignInScreen.signInScreen);
                                },
                              ),
                              Text(
                              AppString.doYouHaveAccount,
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