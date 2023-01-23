import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hogool/UI/farmer_info_Screen.dart';
import 'package:hogool/UI/farmer_search_screen.dart';
import 'package:hogool/UI/homeNav.dart';
import 'package:hogool/UI/land_search.dart';
import 'package:hogool/UI/welcome_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hogool/model/card_land_model.dart';
import 'package:hogool/widgets/card_rent_land.dart';
import 'package:hogool/widgets/show_home_widget.dart';
import '../widgets/card_farmer_home.dart';
import '../widgets/card_investment_offer.dart';
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
              ShowHomeWidget(titel: "تصفح المزارعين ",screenRoute:FarmerSearchScreen(),),
              CardFarmerHome(
                id: 0,
          farmerName: "محمد البدري",
          location: "الخرطوم",
          exepiernce: 5,
          crops: [
            "الذرة", "القمح","البطاطس"
          ],
          image: "mohammed.jpg",
          screenRoute: FarmerInfoScreen() ,
        ),
        SizedBox(height: 10,),
         ShowHomeWidget(titel: "أحدث الأخبار ",screenRoute:FarmerSearchScreen(),),
         
         CardNewHome(id: 0, titleNew: "موسم شتوي ذو انتاجية عالية ", description: "أعلنت حكومة السودان تحقيق معدلات إنتاجية عالية في محصولات الموسم الزراعي لهذا العام، بلغت نحو 4 ملايين ونصف مليون طن ذرة، و700 ألف طن قمحاً"),

         SizedBox(height: 10,),
         ShowHomeWidget(titel: "إكتشف فرص العمل ",screenRoute:FarmerSearchScreen(),),
         CardInvestmentOffer(
          id: 0,
          duration: 5,
          titel: "مشروع انتاج قمح بسوبا",
          description: "مطلوب ممول لمشروع زراعي في سوبا لزراعة 5 فدان قمح في مشروع سوبا الزراعي  والارض محورية الري",
          yield: 50,
          
        ),
        SizedBox(height: 10,),
         ShowHomeWidget(titel: "افضل الاراضي للاستثمار",screenRoute: LandsScreen(),),
          CardRentLand(data: LandData(title: "10 فدان للايجار",duration: 6,description: "ارض زراعية مكتلمة الخدمات بمساحة 10 فدان في محلية جبل اولياء للايجار النصف سنوي"))
                ],
              ),
            ),
      ),

    );
  }
}
