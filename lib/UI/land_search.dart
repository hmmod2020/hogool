import 'package:flutter/material.dart';
import 'package:hogool/model/land_model.dart';
import 'package:hogool/widgets/card_rent_land.dart';

import '../core/themes/app_color.dart';
import '../model/card_land_model.dart';

class LandsScreen extends StatelessWidget {
  
  List<LandData> data=[
LandData(title: "ارض زراعية للايجار السنوي", description: "ارض زراعية بمساحة100 فدان للايجار للسنوي تحتوي على بئر ارتوازية ", duration: 12),
LandData(title: "ارض زراعية للايجار السنوي", description: "ارض زراعية بمساحة100 فدان للايجار للسنوي تحتوي على بئر ارتوازية ", duration: 12),
LandData(title: "ارض زراعية للايجار السنوي", description: "ارض زراعية بمساحة100 فدان للايجار للسنوي تحتوي على بئر ارتوازية ", duration: 12),
LandData(title: "ارض زراعية للايجار السنوي", description: "ارض زراعية بمساحة100 فدان للايجار للسنوي تحتوي على بئر ارتوازية ", duration: 12),
LandData(title: "ارض زراعية للايجار السنوي", description: "ارض زراعية بمساحة100 فدان للايجار للسنوي تحتوي على بئر ارتوازية ", duration: 12),
LandData(title: "ارض زراعية للايجار السنوي", description: "ارض زراعية بمساحة100 فدان للايجار للسنوي تحتوي على بئر ارتوازية ", duration: 12),
LandData(title: "ارض زراعية للايجار السنوي", description: "ارض زراعية بمساحة100 فدان للايجار للسنوي تحتوي على بئر ارتوازية ", duration: 12),
LandData(title: "ارض زراعية للايجار السنوي", description: "ارض زراعية بمساحة100 فدان للايجار للسنوي تحتوي على بئر ارتوازية ", duration: 12),
LandData(title: "ارض زراعية للايجار السنوي", description: "ارض زراعية بمساحة100 فدان للايجار للسنوي تحتوي على بئر ارتوازية ", duration: 12),
LandData(title: "ارض زراعية للايجار السنوي", description: "ارض زراعية بمساحة100 فدان للايجار للسنوي تحتوي على بئر ارتوازية ", duration: 12),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 25,),
            Container(
              margin: EdgeInsets.only(right: 20),
              child: Text("تصفح الأراضي",
              style: TextStyle(
                fontSize: 30,
                color: Colors.black
              ),
              ),
            ),
            SizedBox(height: 5,),
           Container(
            width: double.infinity,
            height: 70,
            margin: EdgeInsets.only(right: 20),
            child: searchScreen()),
           SizedBox(height: 20,),
           Expanded(
             child:ListView.builder(
              itemCount:data.length,
              itemBuilder: (context, index) {
                return CardRentLand(data: data[index],);
              },

             ),
           ),
          ],
        ) ,
      )
    );
  }

   Widget searchScreen(){
    return Container(
      child: Row(
        children: [
          Expanded(
            flex: 7,
            child:TextField(
              
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search,
                color: AppColor.primaryColor,
                ),
                            hintText: "قم بالبحث عن أرض ",
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
                          ),
            )),
          Expanded(
            flex: 3,
            child: Container(
              margin: EdgeInsets.only(bottom: 5,top: 5,right: 20),
              width: double.infinity,
              height: 70,
              decoration: BoxDecoration(
                color: AppColor.fillInputColor,
                borderRadius: BorderRadius.all(Radius.circular(15)),
                
              ),
              child: InkWell(
                child: Icon(
                  Icons.filter_alt_outlined,
                  color: AppColor.primaryColor,
                ),
                onTap: (){},
              ),
            ),
             ),
             SizedBox(width: 25,)
        ],
      ),
    );
  }
}