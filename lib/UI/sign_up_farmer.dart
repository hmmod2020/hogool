import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../modelView/sing_up_farmer.dart';

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
                        fieldFormWidget(true,testStirng,"الإسم",modelView.nameIsValid,false,TextInputType.name),
                        SizedBox(height:30),
                         fieldFormWidget(false,testStirng,"اسم المستخدم",modelView.nameIsValid,false,TextInputType.name),
                         SizedBox(height:30),
                          fieldFormWidget(false,testStirng,"البريد الإلكتروني",modelView.nameIsValid,false,TextInputType.emailAddress),
                         SizedBox(height:30),
                        fieldFormWidget(false,testStirng,"كلمة المرور ",modelView.nameIsValid,true,TextInputType.name),
                         SizedBox(height:30),
                         fieldFormWidget(false,testStirng,"تأكيد كلمة المرور",modelView.nameIsValid,true,TextInputType.name),
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
                                  //////write backend code here
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
                                onTap: (){},
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
//////////////////my widget for this screen///////////////////

Widget fieldFormWidget(bool focased , Function onChanged ,String hintText,
Function validateor,bool isPassword,TextInputType inputType){
 
                 return  TextFormField(

                          onChanged: (value){
                            formKay.currentState!.validate();
                            onChanged(value);
                          },
                          keyboardType:inputType,
                          obscureText:isPassword ,
                          autofocus: focased,
                          validator: (value){
                          return validateor(value);
                          },
                          textDirection: TextDirection.rtl,
                          decoration: InputDecoration(
                            hintText: hintText,
                            hintTextDirection: TextDirection.rtl,
                            filled: true,
                            fillColor: Color(0xffF0F9F1),
                            enabledBorder:  OutlineInputBorder( 
                              borderSide: BorderSide(
                                color: Color(0xffF0F9F1),
                              ), 
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                            ),
                            focusedBorder: OutlineInputBorder(  
                              borderRadius: BorderRadius.all(Radius.circular(15),),
                              borderSide: BorderSide(
                                color: Color(0xffF0F9F1)
                              )
                            ),
                            errorBorder: OutlineInputBorder(  
                              borderRadius: BorderRadius.all(Radius.circular(15),),
                              borderSide: BorderSide(
                                color: Colors.red,
                              ),
                            ),
                            focusedErrorBorder:  OutlineInputBorder(  
                              borderRadius: BorderRadius.all(Radius.circular(15),),
                              borderSide: BorderSide(
                                color: Colors.red,
                              ),
                            ) 
                          ),
                        );
}


//////////////////my widget for this screen///////////////////
void testStirng(String h){

print(h);
}
}