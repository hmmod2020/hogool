import 'package:hogool/model/farmer_model.dart';

import '../network/network_service.dart';

class FarmersModelView{
 var services =NetworkServeics();




Future<List<FarmerModel>> getAllFarmers() async{

var data= await services.getAllFarmer();

return data;
}



}