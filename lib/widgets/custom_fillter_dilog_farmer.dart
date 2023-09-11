import 'package:flutter/material.dart';
import 'package:hogool/core/utils/app_string.dart';
import 'package:multi_dropdown/enum/app_enums.dart';
import 'package:multi_dropdown/models/chip_config.dart';
import 'package:multi_dropdown/models/network_config.dart';
import 'package:multi_dropdown/models/value_item.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';
import 'package:multi_dropdown/widgets/hint_text.dart';
import 'package:multi_dropdown/widgets/selection_chip.dart';
import 'package:multi_dropdown/widgets/single_selected_item.dart';

import '../core/themes/app_color.dart';

class FillterFarmerSearchDilog extends StatelessWidget {
   String _groupVal=AppString.khartoum;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(25))
      ) ,
      child: Container(
        width: double.infinity,
        height: 500,
        margin: EdgeInsets.only(left: 10,right: 10),
        decoration: BoxDecoration(
          color: Colors.transparent
        ),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Stack(
                children: [
                  Center(
                    child: Text(AppString.searchFilter
                    ,style: TextStyle(
                      fontSize: 25,
                      color:AppColor.primaryColor,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                  ),
                 Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(child: Icon(Icons.close)
                    ,onTap:(){
                      Navigator.of(context).pop();
                    }),
                  ],
                 )
                  
                ],
              )),
            Expanded(
              flex: 8,
              child: Padding(
                padding: const EdgeInsets.only(left:15,right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
        SizedBox(height: 55,),
        Text(AppString.location,
        style: TextStyle(
          fontSize: 25,
          color: AppColor.primaryColor,
        ),
        ),
        StatefulBuilder(builder: ((context, setState) {
          return Theme(
            data: Theme.of(context).copyWith(
              toggleableActiveColor: AppColor.primaryColor
            ),
            child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Radio(
                            focusColor: AppColor.primaryColor,
                            value:AppString.khartoum , groupValue: _groupVal, onChanged:((value) {
                              setState((){
                              _groupVal=value.toString();
                              });
                          })),
                          Text(AppString.khartoum,
                          style: TextStyle(
                            color: AppColor.primaryColor,
                            
                          ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            
                            value:AppString.bahry , groupValue: _groupVal, onChanged:((value) {
                              setState((){
                              _groupVal=value.toString();
                              });
                          })),
                          Text(AppString.bahry,
                          style: TextStyle(
                            color: AppColor.primaryColor,
                            
                          ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value:AppString.omdorman , groupValue: _groupVal, onChanged:((value) {
                              setState((){
                              _groupVal=value.toString();
                              });
                          })),
                          Text(AppString.omdorman,
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
        SizedBox(height: 30,),
        Row(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Container(
              width: 120,
              height: 50,
              child: TextButton(
                              style: ButtonStyle(
                                backgroundColor:MaterialStateProperty.all( AppColor.primaryColor),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)
                                ))
                              ),
                              onPressed: (){
                               //////////////
                               ///fillter
                              },
                               child: Text(AppString.save,
                               style: TextStyle(
                                color: AppColor.backgroundColor,
                                fontSize:17,
                                fontWeight: FontWeight.bold
                               ),
                               )
                                ,
                               ),
            ),

          ],
          
          )
                  ],
                ),
              )),

          ],
        ),
      ),
    );
  }
}