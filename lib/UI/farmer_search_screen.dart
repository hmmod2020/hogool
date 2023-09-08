import 'package:flutter/material.dart';
import 'package:hogool/UI/farmer_info_Screen.dart';
import 'package:hogool/model/farmer_model.dart';
import 'package:hogool/modelView/farmers_screen_modelView.dart';
import 'package:hogool/widgets/card_farmer_home.dart';
import 'package:lottie/lottie.dart';

import '../core/themes/app_color.dart';
import '../model/card_farmer_model.dart';
import '../widgets/custom_fillter_dilog_farmer.dart';

class FarmerSearchScreen extends StatelessWidget {
var modelVeiw=FarmersModelView();
List<cardFarmerModel> dataTest=[];  

FarmerSearchScreen(){

  dataTest.add(cardFarmerModel(
          id: 0,
          farmerName: "محمد البدري",
          location: "الخرظوم",
          exepiernce: 5,
          crops: [
            "الذرة", "القمح","البطاطس"
          ],
          
          image: "mohammed.jpg",),);
           dataTest.add(cardFarmerModel(
          id: 0,
          farmerName: "محمد البدري",
          location: "الخرطوم",
          exepiernce: 5,
          crops: [
            "الذرة", "القمح","البطاطس"
          ],
          image: "mohammed.jpg",),);
           dataTest.add(cardFarmerModel(
          id: 0,
          farmerName: "محمد البدري",
          location: "الخرظوم",
          exepiernce: 5,
          crops: [
            "الذرة", "القمح","البطاطس"
          ],
          image: "mohammed.jpg",),);
           dataTest.add(cardFarmerModel(
          id: 0,
          farmerName: "محمد البدري",
          location: "الخرظوم",
          exepiernce: 5,
          crops: [
            "الذرة", "القمح","البطاطس"
          ],
          image: "mohammed.jpg",),);
           dataTest.add(cardFarmerModel(
          id: 0,
          farmerName: "محمد البدري",
          location: "الخرظوم",
          exepiernce: 5,
          crops: [
            "الذرة", "القمح","البطاطس"
          ],
          image: "mohammed.jpg",),); dataTest.add(cardFarmerModel(
          id: 0,
          farmerName: "محمد البدري",
          location: "الخرظوم",
          exepiernce: 5,
          crops: [
            "الذرة", "القمح","البطاطس"
          ],
          image: "mohammed.jpg",),); dataTest.add(cardFarmerModel(
          id: 0,
          farmerName: "محمد البدري",
          location: "الخرظوم",
          exepiernce: 5,
          crops: [
            "الذرة", "القمح","البطاطس"
          ],
          image: "mohammed.jpg",),);
}
static String farmerScreen="/farmerScreen";
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
              child: Text("تصفح المزارعين ",
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
            child: searchScreen(context)),
           SizedBox(height: 20,),
           Expanded(
             child:FutureBuilder(
              future: modelVeiw.getAllFarmers(),
              builder: ((context, snapshot) {
               if(snapshot.hasData){
                return ListView.builder(
              itemCount: snapshot.data!.length.toInt(),
              itemBuilder:(context, index) {
               return CardFarmerHome(id: snapshot.data![index].farmer_id,image: 
                dataTest[index].image,exepiernce: snapshot.data![index].experince,
                farmerName: snapshot.data![index].full_name,
                crops:dataTest[index].crops,
                location: snapshot.data![index].location,
                screenRoute:FarmerInfoScreen(),
                );
              },
              );
               }else{
                return Lottie.asset("assets/loader.json",repeat: true);
               }
             })),
           ),
          ],
        ) ,
      )
    );
  }


  Widget searchScreen(BuildContext context){

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
                            hintText: "قم بالبحث عن مزارع",
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
                onTap: (){

                  showDialog(context:context, builder: ((context) {
                    return FillterFarmerSearchDilog() ;
                  }));
                },
              ),
            ),
             ),
             SizedBox(width: 25,)
        ],
      ),
    );
  }
}


// ListView.builder(
//               itemCount: dataTest.length,
//               itemBuilder:(context, index) {
//                return CardFarmerHome(id: dataTest[index].id,image: 
//                 dataTest[index].image,exepiernce: dataTest[index].exepiernce,
//                 farmerName: dataTest[index].farmerName,
//                 crops:dataTest[index].crops,
//                 location: dataTest[index].location,
//                 screenRoute:FarmerInfoScreen(),
//                 );
//               },
//               ),