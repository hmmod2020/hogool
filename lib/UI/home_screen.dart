import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hogool/UI/farmer_info_Screen.dart';
import 'package:hogool/UI/farmer_search_screen.dart';
import 'package:hogool/UI/homeNav.dart';
import 'package:hogool/UI/land_search.dart';
import 'package:hogool/UI/welcome_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hogool/core/utils/app_string.dart';
import 'package:hogool/model/land_model.dart';
import 'package:hogool/modelView/home_screen_viewModel.dart';
import 'package:hogool/widgets/card_rent_land.dart';
import 'package:hogool/widgets/show_home_widget.dart';
import 'package:lottie/lottie.dart';
import '../core/themes/app_color.dart';
import '../model/card_land_model.dart';
import '../widgets/card_farmer_home.dart';
import '../widgets/card_investment_offer.dart';
import '../widgets/card_new_home_widget.dart';
import '../widgets/card_slied.dart';
import '../widgets/slider_widget.dart';

class HomeScreen extends StatelessWidget {
  
 var modelVeiw=HomeScreenViewModel();
 
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
     appBar: AppBar(
      elevation: 0.0,
      backgroundColor: AppColor.backgroundColor,
      leading: Container(
        margin: EdgeInsets.only(right: 5),
        child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        child: Image.asset("assets/mohmmed.jpg",
                          fit: BoxFit.cover,
                          ),
                      ),
      ),
      title:   Text(AppString.welcome+"محمد البدري",
                      style: TextStyle(
                        fontSize: 20,
                        color:AppColor.titleColor
                      ),),
     ),

    body:FutureBuilder(
      future: modelVeiw.getData(),
      builder: ((context, snapshot) {
        if(snapshot.hasData){
       
          return SafeArea(
      child: SingleChildScrollView(
              child: Column(
                
                children: [
                   SizedBox(height: 20,),   
              SliderWidgetControl() , 
              SizedBox(height: 20,),
              ShowHomeWidget(titel: AppString.browseFarmer,screenRoute:FarmerSearchScreen(),),
              CardFarmerHome(
                id: 0,
          farmerName:snapshot.data?.farmerData?.full_name.toString(),
          location: snapshot.data?.farmerData?.location,
          exepiernce: 5,
          crops: [
            "الذرة", "القمح","البطاطس"
          ],
          image: "mohammed.jpg",
          screenRoute: FarmerInfoScreen() ,
        ),
        SizedBox(height: 10,),
         ShowHomeWidget(titel: AppString.lastNew,screenRoute:FarmerSearchScreen(),),
         
         CardNewHome(id: 0, titleNew:snapshot.data!.newData?.title, description: snapshot.data?.newData?.contnet),

         SizedBox(height: 10,),
         ShowHomeWidget(titel: AppString.descoverJob,screenRoute:FarmerSearchScreen(),),
         CardInvestmentOffer(
          id: 0,
          duration: snapshot.data!.offerData!.duration,
          titel: snapshot.data?.offerData!.title,
          description: snapshot.data?.offerData!.description,
          yield: 50,
          
        ),
        SizedBox(height: 10,),
         ShowHomeWidget(titel: AppString.landForRent,screenRoute: LandsScreen(),),
          CardRentLand(data: LandData(title:snapshot.data!.landData?.title,duration:snapshot.data!.landData!.duration,description: snapshot.data!.landData!.description))
                ],
              ),
            ),
      );
        }else{

          return Lottie.asset("assets/loader.json",repeat: true);
        }

      })
    
    )
    );
  }
}
