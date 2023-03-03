
class FarmerModel{
 int? farmer_id;
 String? full_name ;
 String? description;
 int? experince;
 String? profile_photo;
 String? location;
 bool? avalability_for_job;

FarmerModel({required this.farmer_id,required this.full_name,required this.description,required this.experince,required this.profile_photo,required this.location,required this.avalability_for_job});

FarmerModel.fromJson(Map <String ,dynamic> json){
farmer_id=json["farmer_id"];
full_name=json["full_name"];
description=json["description"];
profile_photo=json["profile_photo"];
location=json["location"];
avalability_for_job=json["avalability_for_job"];
}

Map<String,dynamic>toJSON( ){

  return {
    "farmer_id":farmer_id,
    "full_name":full_name,
    "location":location,
    "experince":experince,
    "profile_photo":profile_photo,
    "location":location,
    "avalability_for_job":avalability_for_job

  };
  
  }
}
