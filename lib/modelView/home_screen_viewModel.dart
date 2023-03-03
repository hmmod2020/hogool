

import 'package:chopper/chopper.dart';
import 'package:flutter/cupertino.dart';
import 'package:hogool/model/farmer_model.dart';
import 'package:hogool/model/invesment_model.dart';
import 'package:hogool/model/land_model.dart';
import 'package:hogool/model/new_model.dart';
import 'package:hogool/network/network_service.dart';

class HomeScreenViewModel{
 FarmerModel? farmerData;
 NewModel? newData;
 LandModel? landData;
 InvesmentModel? offerData;
 
 final services=NetworkServeics();


Future <HomeDate> getData() async{
farmerData =await services.getFarmer(1);

newData=await services.getNew(1);
landData =await services.getLand(1);
offerData=await services.getinvesmentOffer(1);
var data= await HomeDate(farmerData: farmerData,newData: newData,landData: landData,offerData: offerData);
return data ;
}


}

class HomeDate{
  FarmerModel? farmerData;
 NewModel? newData;
 LandModel? landData;
 InvesmentModel? offerData;

HomeDate({required this.offerData,required this.farmerData,required this.landData,required this.newData});


}