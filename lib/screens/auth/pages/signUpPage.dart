import 'package:flutter/material.dart';
import 'package:chopper/chopper.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hogool/UI/sing_in_farmer.dart';
import 'package:hogool/core/utils/app_string.dart';
import 'package:hogool/data/auth/models/request/signUpModel.dart';
import 'package:hogool/screens/auth/bloc/auth_bloc.dart';
import 'package:hogool/widgets/dilog_done.dart';
import '../../../core/services/service_locator.dart' as di;
import '../../../core/themes/app_color.dart';
import '../../../widgets/dilog_error.dart';
import '../../../widgets/dilog_loading.dart';
import '../widgets/formField.dart';

class SignUpScreen extends StatelessWidget {
  SignUpModel userData=SignUpModel(accountType: "farmer");
  //need to set the other way
  var formKay = GlobalKey<FormState>();
  var testText = "hmmod";

  static String singUpFarmer = "/singUpFarmer";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
        child:Container(
          child: Center(
            child: formBody(context),
          ),
        )
        ),
    );
  }
  Widget pressBtn(BuildContext context){
    return TextButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              AppColor.primaryColor),
          shape: MaterialStateProperty.all<
              RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.circular(15)))),
      onPressed: () {
        if (formKay.currentState!.validate()) {
          BlocProvider.of<AuthBloc>(context).add(RegisterEvent(userData:userData));
        }
      },
      child: Text(
        AppString.signUp,
        style: TextStyle(
            color: AppColor.backgroundColor,
            fontSize: 22,
            fontWeight: FontWeight.bold),
      ),
    );
  }



  Widget formBody(BuildContext context){
    return SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 25),
                    child: Center(
                      child: Text(
                        AppString.signUpFarmer,
                        style: TextStyle(
                            color: AppColor.primaryColor,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Form(
                    key: formKay,
                    child: Padding(
                      padding: const EdgeInsets.all(25),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            //form fields
                            FieldForm.fieldFormWidget(true,testStirng,AppString.name,nameIsValid,false,TextInputType.name),
                            SizedBox(height: 30),
                            FieldForm.fieldFormWidget(false,testStirng,AppString.userName,userNameIsValid,false,TextInputType.name),
                            SizedBox(height: 30),
                            FieldForm.fieldFormWidget(false,testStirng,AppString.email,emailIsValid,false,TextInputType.emailAddress),
                            SizedBox(height: 30),
                            FieldForm.fieldFormWidget(false,testStirng,AppString.password,passwordIsValid,true,TextInputType.name),
                            SizedBox(height: 30),
                            FieldForm.fieldFormWidget(false,testStirng,AppString.v_password,RepasswordIsValid,true,TextInputType.name),
                            SizedBox(height: 30),
                             //form fields
                            Container(
                              width: double.infinity,
                              height: 60,
                               child:
                               BlocConsumer<AuthBloc,AuthState>(
                                builder:(context, state) {
                                  return pressBtn(context);
                                },
                                listener: (context,state) {
                                  if(state is Authloading){
                                    showDialog(
                                        barrierDismissible: false,
                                        context: context,
                                        builder: ((context) {
                                          return LoadingDilog(title: AppString.loadingSignUp);
                                        }));
                                  }else if(state is AuthError) {
                                    Navigator.of(context).pop();
                                    showDialog(
                                        barrierDismissible: true,
                                        context: context,
                                        builder: ((context) {
                                          return ErrorDilog(
                                            title: state.errorMessage,
                                          );
                                        }));
                                  }else if(state is AuthSecsseis){
                                    Navigator.of(context).pop();
                                    showDialog(
                                        barrierDismissible: true,
                                        context: context,
                                        builder: ((context) {
                                          return DoneDilog();
                                        }));
                                  }

                                }
                                ,),
                            ),

                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  child: Text(
                                    AppString.plzSignIn,
                                    style: TextStyle(
                                      color: AppColor.primaryColor,
                                      fontSize: 20,
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.of(context).popAndPushNamed(
                                        SignInScreen.signInScreen);
                                  },
                                ),
                                Text(
                                  AppString.doYouHaveAccount,
                                  style: TextStyle(
                                    color: AppColor.titleColor,
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
            );
  }
  //validators----------------------//

  String tempPassword = "";
  String? userNameIsValid(String value) {
    if (value.isEmpty || value == " ") {
      return AppString.valdateUserName;
    } else {
      userData.userName = value;
      return null;
    }
  }

  String? nameIsValid(String value) {
    if (value.isEmpty || value == " ") {
      return AppString.valdateName;
    } else {
      userData.fullName = value;
      return null;
    }
  }

  String? emailIsValid(String value) {
    RegExp email = new RegExp(
      "[a-z0-9]+@[a-z]+\.[a-z]{2,3}",
      caseSensitive: false,
      multiLine: false,
    );

    if (email.hasMatch(value)) {
      userData.email = value;
      return null;
    } else if (value.isEmpty || value == " ") {
      return AppString.dontEmpty;
    } else {
      return "enter the vaild email";
    }
  }

  String? passwordIsValid(String value) {
    RegExp password = new RegExp(
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$',
      caseSensitive: false,
      multiLine: false,
    );

    if (value.length < 8) {
      return AppString.valdatePassword;
    } else if (!password.hasMatch(value.toString())) {
      return AppString.valdatePasswordL;
    } else if (value.isEmpty) {
      return AppString.enterPassword;
    } else {
      tempPassword = value;
      return null;
    }
  }

  String? RepasswordIsValid(String value) {
    if (value == tempPassword) {
      userData.password = value;
      return null;
    } else {
      return AppString.PasswordCompatibel;
    }
  }

  void testStirng(String h) {
    print(h);
  }
  
  //validators----------------------//

}


