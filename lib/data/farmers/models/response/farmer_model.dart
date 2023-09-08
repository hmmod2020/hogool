

// ignore: must_be_immutable
import '../../../../domain/farmers/entities/farmerEntity.dart';

class FarmerModel extends FarmerEntity{


FarmerModel({
required super.farmer_id,
required super.full_name,
required super.description,
required super.experince,
required super.profile_photo,
required super.location,
required super.phone,
required super.avalability_for_job});

FarmerModel.fromJson(Map <String ,dynamic> json){
farmer_id=json["farmer_id"];
full_name=json["full_name"];
experince=json["experince"];
description=json["description"];
phone=json["phone"];
profile_photo=json["profile_photo"];
location=json["location"];
avalability_for_job=json["avalability_for_job"];
}

Map<String,dynamic>toJSON( ){

  return {
    "farmer_id":farmer_id,
    "full_name":full_name,
    "location":location,
    "phone":phone,
    "experince":experince,
    "profile_photo":profile_photo,
    "location":location,
    "avalability_for_job":avalability_for_job

  };
  
  }
}
