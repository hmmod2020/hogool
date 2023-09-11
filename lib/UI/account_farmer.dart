import 'package:flutter/material.dart';
import 'package:hogool/core/utils/app_string.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';

import '../core/themes/app_color.dart';

class AccountFarmer extends StatelessWidget {
  

  var fullNameCon=TextEditingController();
  var numberCon=TextEditingController();
  var descrotionCon=TextEditingController();
  var emailCon=TextEditingController();
  var userCon=TextEditingController();
   String _groupVal=AppString.notAvailable;
   int expeirence=0;

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(AppString.personalAccount,
                    style: TextStyle(
                      color: AppColor.primaryColor,
                      fontSize: 35,
                      fontWeight: FontWeight.bold
                    ),
                    )
                  ],
                ),
                SizedBox(height: 15,),
                SizedBox(
                  width: double.infinity,
                  height: 70,
                  child: TextField(
                    controller: fullNameCon,
                    decoration: InputDecoration(
                                hintText:AppString.fullName,
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
                                    color: AppColor.hentError,
                                  ),
                                ),
                                focusedErrorBorder:  OutlineInputBorder(  
                                  borderRadius: BorderRadius.all(Radius.circular(15),),
                                  borderSide: BorderSide(
                                    color: AppColor.hentError,
                                  ),
                                ) 
                              ),
                  ),
                ),
                SizedBox(height: 15,),
                SizedBox(
                  width: double.infinity,
                  height: 70,
                  child: TextField(
                    controller: userCon,
                    decoration: InputDecoration(
                                hintText:AppString.userName,
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
                                    color: AppColor.hentError,
                                  ),
                                ),
                                focusedErrorBorder:  OutlineInputBorder(  
                                  borderRadius: BorderRadius.all(Radius.circular(15),),
                                  borderSide: BorderSide(
                                    color: AppColor.hentError,
                                  ),
                                ) 
                              ),
                  ),
                ),
                SizedBox(height: 30,),
                SizedBox(
                  width: double.infinity,
                  height: 70,
                  child: TextField(
                    controller: numberCon,
                    decoration: InputDecoration(
                      
                                hintText:AppString.phoneC,
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
                                    color: AppColor.hentError,
                                  ),
                                ),
                                focusedErrorBorder:  OutlineInputBorder(  
                                  borderRadius: BorderRadius.all(Radius.circular(15),),
                                  borderSide: BorderSide(
                                    color: AppColor.hentError,
                                  ),
                                ) 
                              ),
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  width: double.infinity,
                  height: 70,
                  child:  TextField(
                    controller: emailCon,
                    decoration: InputDecoration(
                      
                                hintText:AppString.email,
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
                                    color: AppColor.hentError,
                                  ),
                                ),
                                focusedErrorBorder:  OutlineInputBorder(  
                                  borderRadius: BorderRadius.all(Radius.circular(15),),
                                  borderSide: BorderSide(
                                    color: AppColor.hentError,
                                  ),
                                ) 
                              ),
                  ),
                ),
                 SizedBox(height: 15,),
                Container(
                  width: double.infinity,
                  height: 60,
                  child: MultiSelectDropDown(
                    selectionType: SelectionType.single,
          chipConfig: ChipConfig(
            backgroundColor: AppColor.primaryColor
          ),
          selectedOptionBackgroundColor:Colors.transparent ,
          optionsBackgroundColor:AppColor.backgroundColor,
          selectedOptionTextColor: AppColor.primaryColor,
          selectedOptionIcon: Icon(
            Icons.check,
            color: AppColor.primaryColor
            ,
          ),
          backgroundColor: AppColor.fillInputColor,
          dropdownHeight: 180.0,
          hint: AppString.locationC,
          onOptionSelected: ((selectedOptions) {
            print(selectedOptions);
          }),
           options: <ValueItem>[

            ValueItem(label: AppString.khartoum,value: "1"),
            ValueItem(label: AppString.omdorman,value: "2"),
            ValueItem(label: AppString.bahry,value: "3"),
           
        ]),
                  ),
            SizedBox(height: 15,),
                TextField(             
                  controller: descrotionCon,
                  maxLines: 15,
                  minLines: 10,
                    decoration: InputDecoration(
                                hintText:AppString.aboutFarmerC,
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
                                    color: AppColor.hentError,
                                  ),
                                ),
                                focusedErrorBorder:  OutlineInputBorder(  
                                  borderRadius: BorderRadius.all(Radius.circular(15),),
                                  borderSide: BorderSide(
                                    color: AppColor.hentError,
                                  ),
                                ) 
                              ),
                ),
                SizedBox(height: 15,),
                Row(     
                  children: [
                    Text(AppString.farmerCrops,
                        style: TextStyle(
                          color: AppColor.primaryColor,
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                  ],
                  
                ),
                SizedBox(height: 15,),
                        MultiSelectDropDown(
          chipConfig: ChipConfig(
            backgroundColor: AppColor.primaryColor
          ),
          selectedOptionBackgroundColor:Colors.transparent ,
          optionsBackgroundColor:AppColor.backgroundColor,
          selectedOptionTextColor: AppColor.primaryColor,
          selectedOptionIcon: Icon(
            Icons.check,
            color: AppColor.primaryColor
            ,
          ),
          backgroundColor: AppColor.backgroundColor,
          dropdownHeight: 180.0,
          hint: AppString.selectCrops,
          onOptionSelected: ((selectedOptions) {
            print(selectedOptions);
          }),
           options: <ValueItem>[

            ValueItem(label: "الذرة",value: "1"),
            ValueItem(label: "القمح",value: "2"),
            ValueItem(label: "بطاطس",value: "3"),
            ValueItem(label: "طماطم",value: "4"),
            ValueItem(label: "خضروات",value: "5"),

        ]),
        SizedBox(height: 50,),
          StatefulBuilder(builder: ((context, setState) {
          return Theme(
            data: Theme.of(context).copyWith(
              toggleableActiveColor: AppColor.primaryColor
            ),
            child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Radio(
                            focusColor: AppColor.primaryColor,
                            value:AppString.available , groupValue: _groupVal, onChanged:((value) {
                              setState((){
                              _groupVal=value.toString();
                              });
                          })),
                          Text(AppString.available,
                          style: TextStyle(
                            color: AppColor.primaryColor,
                            
                          ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            
                            value:AppString.notAvailable, groupValue: _groupVal, onChanged:((value) {
                              setState((){
                              _groupVal=value.toString();
                              });
                          })),
                          Text(AppString.notAvailable,
                          style: TextStyle(
                            color: AppColor.primaryColor,
                            
                          ),
                          )
                        ],
                      ),
                    ],
          
            ),
          );
        })),
        SizedBox(height: 15,),
        Row(
          children: [
            Text(AppString.workExperience,
                        style: TextStyle(
                          color: AppColor.primaryColor,
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                        ),
                        ),

                        ////here is missing widget
          ],
        ),
        SizedBox(height: 20,),
        Container(
                            width: double.infinity,
                            height: 70,
                             child: TextButton(
                              style: ButtonStyle(
                                backgroundColor:MaterialStateProperty.all( AppColor.primaryColor),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)
                                ))
                              ),
                              onPressed: (){
                               
                              },
                               child: Text(AppString.save,
                               style: TextStyle(
                                color: AppColor.backgroundColor,
                                fontSize: 22,
                                fontWeight: FontWeight.bold
                               ),
                               )
                                ,
                               ),
                           ),
                           SizedBox(height: 15,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}