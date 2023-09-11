import 'package:flutter/material.dart';
import 'package:hogool/core/utils/app_string.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';

import '../core/themes/app_color.dart';

class CreateInvesmentScreen extends StatelessWidget {
  var decInv=TextEditingController();
  var decLand=TextEditingController();
  var duration=TextEditingController();
  var space=TextEditingController();
  var finance=TextEditingController();
   String _groupVal=AppString.notAvailable;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 25,right: 25,left: 25),
          child: SingleChildScrollView(
            child: Column(
              children: [
                 SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(AppString.createInvesmentOffer,
                    style: TextStyle(
                      color: AppColor.primaryColor,
                      fontSize: 35,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    
                  ],
                ),
                SizedBox(height: 25,),
                Row(
                  children: [
                    Text(AppString.offerDescription,
                    style: TextStyle(
                      color: AppColor.primaryColor,
                      fontSize: 20
                    ),
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                TextField(
                  controller: decInv,
                  maxLines: 12,
                  minLines: 7,
                    decoration: InputDecoration(
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
                 SizedBox(height: 25,),
                Row(
                  children: [
                    Text(AppString.landDescription,
                    style: TextStyle(
                      color: AppColor.primaryColor,
                      fontSize: 20
                    ),
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                TextField(
                  controller: decLand,
                  maxLines: 10,
                  minLines: 5,
                    decoration: InputDecoration(
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
                SizedBox(height: 20,),
                 Row(
                  children: [
                    Text(AppString.irrigation_typemodels,
                    style: TextStyle(
                      color: AppColor.primaryColor,
                      fontSize: 20
                    ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
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
          hint: AppString.type,
          onOptionSelected: ((selectedOptions) {
            print(selectedOptions);
          }),
           options: <ValueItem>[

            ValueItem(label: "محوي",value: "1"),
            ValueItem(label: "ابار",value: "2"),
            
           
        ]),
                  ),
                    SizedBox(height: 15,),
                     Row(
                  children: [
                    Text(AppString.location,
                    style: TextStyle(
                      color: AppColor.primaryColor,
                      fontSize: 20
                    ),
                    ),
                  ],
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

            ValueItem(label: "الخرطوم",value: "1"),
            ValueItem(label: "ام درمان",value: "2"),
            ValueItem(label: "بحري",value: "3"),
           
        ]),
                  ),
                   SizedBox(height: 15,),
                         Row(
                  children: [
                    Text(AppString.durationInvesmnet,
                    style: TextStyle(
                      color: AppColor.primaryColor,
                      fontSize: 20
                    ),
                    ),
                  ],
                ),
                 SizedBox(height: 15,),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: duration,
                    decoration: InputDecoration(
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
                    Text(AppString.finance,
                    style: TextStyle(
                      color: AppColor.primaryColor,
                      fontSize: 20
                    ),
                    ),
                  ],
                ),
                 SizedBox(height: 15,),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: finance,
                    decoration: InputDecoration(
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
                    Text(AppString.landStatus,
                    style: TextStyle(
                      color: AppColor.primaryColor,
                      fontSize: 20
                    ),
                    ),
                  ],
                ),
                
                 
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
                            
                            value:AppString.notAvailable , groupValue: _groupVal, onChanged:((value) {
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
                    Text(AppString.landSpace,
                    style: TextStyle(
                      color: AppColor.primaryColor,
                      fontSize: 20
                    ),
                    ),
                     
                  ],
                ),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                        controller: space,
                      
                          decoration: InputDecoration(
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
                 Expanded(
                   child: Row(
                     children: [
                       Text(AppString.space,
                          style: TextStyle(
                            color: AppColor.primaryColor,
                            fontSize: 25
                          ),
                          ),
                     ],
                   ),
                 ),
                    ],
                  ),
                  SizedBox(height: 25,),
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
              ],
            ),
          ),
        )
      ),
    );
  }
}