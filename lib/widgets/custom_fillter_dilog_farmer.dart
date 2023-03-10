import 'package:flutter/material.dart';
import 'package:multi_dropdown/enum/app_enums.dart';
import 'package:multi_dropdown/models/chip_config.dart';
import 'package:multi_dropdown/models/network_config.dart';
import 'package:multi_dropdown/models/value_item.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';
import 'package:multi_dropdown/widgets/hint_text.dart';
import 'package:multi_dropdown/widgets/selection_chip.dart';
import 'package:multi_dropdown/widgets/single_selected_item.dart';

class FillterFarmerSearchDilog extends StatelessWidget {
   String _groupVal="الخرطوم";

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
                    child: Text("فلترة البحث"
                    ,style: TextStyle(
                      fontSize: 25,
                      color:Color(0xff4CAF50),
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
            backgroundColor: Color(0xff4CAF50)
          ),
          selectedOptionBackgroundColor:Colors.transparent ,
          optionsBackgroundColor:Colors.white,
          selectedOptionTextColor: Color(0xff4CAF50),
          selectedOptionIcon: Icon(
            Icons.check,
            color: Color(0xff4CAF50)
            ,
          ),
          backgroundColor: Colors.white,
          dropdownHeight: 180.0,
          hint: "اختر المحاصيل",
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
        Text("الموقع : ",
        style: TextStyle(
          fontSize: 25,
          color: Color(0xff4CAF50),
        ),
        ),
        StatefulBuilder(builder: ((context, setState) {
          return Theme(
            data: Theme.of(context).copyWith(
              toggleableActiveColor: Color(0xff4CAF50)
            ),
            child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Radio(
                            focusColor: Color(0xff4CAF50),
                            value:"الخرطوم" , groupValue: _groupVal, onChanged:((value) {
                              setState((){
                              _groupVal=value.toString();
                              });
                          })),
                          Text("الخرطوم",
                          style: TextStyle(
                            color: Color(0xff4CAF50),
                            
                          ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            
                            value:"بحري" , groupValue: _groupVal, onChanged:((value) {
                              setState((){
                              _groupVal=value.toString();
                              });
                          })),
                          Text("بحري",
                          style: TextStyle(
                            color: Color(0xff4CAF50),
                            
                          ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value:"امدرمان" , groupValue: _groupVal, onChanged:((value) {
                              setState((){
                              _groupVal=value.toString();
                              });
                          })),
                          Text("امدرمان",
                          style: TextStyle(
                            color: Color(0xff4CAF50),
                            
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
                                backgroundColor:MaterialStateProperty.all( Color(0xff4CAF50)),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)
                                ))
                              ),
                              onPressed: (){
                               //////////////
                               ///fillter
                              },
                               child: Text("حفظ",
                               style: TextStyle(
                                color: Colors.white,
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