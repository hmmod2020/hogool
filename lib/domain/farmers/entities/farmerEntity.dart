import 'package:equatable/equatable.dart';

class FarmerEntity extends Equatable {

 int? farmer_id;
 String? full_name ;
 String? description;
 int? experince;
 String? profile_photo;
 String? location;
 String?phone;
 bool? avalability_for_job;



 
FarmerEntity({
   this.farmer_id,
   this.full_name,
   this.description,
   this.experince,
   this.profile_photo,
   this.location,
   this.avalability_for_job,
   this.phone});


  @override
  // TODO: implement props
  List<Object?> get props => [farmer_id,full_name
  ,experince,profile_photo,location,avalability_for_job,phone];

}