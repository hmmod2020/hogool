import 'package:equatable/equatable.dart';

class InvesmentOfferEntity extends Equatable{

 int? id ;
 int? financing ;
 String? description;
 String? title;
 String? location;
 int? duration;
 String? description_the_land;
 String? irrigation_typemodels;
 int? space;
 bool? avalability;
 
  @override
  // TODO: implement props
  List<Object?> get props => [
    id,financing,description,title,location,duration,
    description_the_land,irrigation_typemodels,space,avalability
  ];
}