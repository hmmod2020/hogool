import 'package:flutter/material.dart';
class CustomWidget{

  
static Widget fieldFormWidget(bool focased , Function onChanged ,String hintText,
Function validateor,bool isPassword,TextInputType inputType){
 
                 return  TextFormField(
                          onChanged: (value){
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


}