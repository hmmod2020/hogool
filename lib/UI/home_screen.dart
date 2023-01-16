import 'package:flutter/material.dart';
import 'package:hogool/widgets/show_home_widget.dart';
import '../widgets/card_farmer_home.dart';
import '../widgets/card_new_home_widget.dart';
import '../widgets/card_slied.dart';
import '../widgets/slider_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     appBar: AppBar(
      elevation: 0.0,
      backgroundColor: Colors.white,
      leading: Container(
        margin: EdgeInsets.only(right: 5),
        child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        child: Image.asset("mohmmed.jpg",
                          fit: BoxFit.cover,
                          ),
                      ),
      ),
      title:   Text("مرحبا بك : "+"محمد البدري",
                      style: TextStyle(
                        fontSize: 20,
                        color:Colors.black
                      ),),
     ),

    body:SafeArea(
      child: SingleChildScrollView(
              child: Column(
                
                children: [
                   SizedBox(height: 20,),   
              SliderWidgetControl() , 
              SizedBox(height: 20,),
              ShowHomeWidget(titel: "تصفح المزارعين ",ontap: (){}),
              CardFarmerHome(
          farmerName: "محمد البدري",
          location: "الخرظوم",
          exepiernce: 5,
          crops: [
            "الذرة", "القمح","البطاطس"
          ],
          image: "mohammed.jpg",
        ),
        SizedBox(height: 10,),
         ShowHomeWidget(titel: "أحدث الأخبار ",ontap: (){},),
         
         CardNewHome(titleNew: "موسم شتوي ذو انتاجية عالية ", description: "أعلنت حكومة السودان تحقيق معدلات إنتاجية عالية في محصولات الموسم الزراعي لهذا العام، بلغت نحو 4 ملايين ونصف مليون طن ذرة، و700 ألف طن قمحاً"),

         SizedBox(height: 10,),
         ShowHomeWidget(titel: "مزراعين مقترحين ",ontap: (){}),
         CardFarmerHome(
          farmerName: "محمد البدري",
          location: "الخرظوم",
          exepiernce: 5,
          crops: [
            "الذرة", "القمح","البطاطس"
          ],
          image: "mohammed.jpg",
        ),
                ],
              ),
            ),
      ),

    );
  }
}
