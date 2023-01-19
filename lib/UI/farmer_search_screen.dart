import 'package:flutter/material.dart';
import 'package:hogool/model/card_farmer_model.dart';
import 'package:hogool/widgets/card_farmer_home.dart';

class FarmerSearchScreen extends StatelessWidget {

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
            child: searchScreen()),
           SizedBox(height: 20,),
           Expanded(
             child:ListView.builder(
              itemCount: dataTest.length,
              itemBuilder:(context, index) {
               return CardFarmerHome(id: dataTest[index].id,image: 
                dataTest[index].image,exepiernce: dataTest[index].exepiernce,
                farmerName: dataTest[index].farmerName,
                crops:dataTest[index].crops,
                location: dataTest[index].location,
                );
              },
              ) 
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
                color: Color(0xff4CAF50),
                ),
                            hintText: "قم بالبحث عن مزارع",
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
            )),
          Expanded(
            flex: 3,
            child: Container(
              margin: EdgeInsets.only(bottom: 5,top: 5,right: 20),
              width: double.infinity,
              height: 70,
              decoration: BoxDecoration(
                color: Color(0xffF0F9F1),
                borderRadius: BorderRadius.all(Radius.circular(15)),
                
              ),
              child: InkWell(
                child: Icon(
                  Icons.filter_alt_outlined
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