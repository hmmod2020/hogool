import 'package:flutter/material.dart';

import '../core/themes/app_color.dart';
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
                            fillColor: AppColor.fillInputColor,
                            enabledBorder:  OutlineInputBorder( 
                              borderSide: BorderSide(
                                color: AppColor.fillInputColor,
                              ), 
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                            ),
                            focusedBorder: OutlineInputBorder(  
                              borderRadius: BorderRadius.all(Radius.circular(15),),
                              borderSide: BorderSide(
                                color: AppColor.fillInputColor
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