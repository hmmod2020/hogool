import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SingUpFarmer extends StatelessWidget {

  
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
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        TextFormField(
                          textDirection: TextDirection.rtl,
                          decoration: InputDecoration(
                            hintText: "الإسم",
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
                          ),
                        ),
                        SizedBox(height:30),
                        TextFormField(     
  
                          textDirection: TextDirection.rtl,
                          decoration: InputDecoration(
                            hintText: "اسم المستخدم",
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
                          ),
                        ),
                         SizedBox(height:30),
                        TextFormField(   
                          keyboardType: TextInputType.emailAddress,  
                          textDirection: TextDirection.rtl,
                          decoration: InputDecoration(
                            hintText: "البريد الإلكتروني",
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
                          ),
                        ),
                         SizedBox(height:30),
                        TextFormField(  
                          obscureText: true,   
                          textDirection: TextDirection.rtl,
                          decoration: InputDecoration(
                            hintText: "كلمة المرور ",
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
                          ),
                        ),
                         SizedBox(height:30),
                        TextFormField(     
                          obscureText: true,
                          textDirection: TextDirection.rtl,
                          decoration: InputDecoration(
                            hintText: "تأكيد كلمة المرور",
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
                          ),
                        ),
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
                            onPressed: (){},
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

}