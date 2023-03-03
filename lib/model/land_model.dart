class LandModel{
 int? id;
 int? land_oner;
 int? space ;
 String? title;
 int? duration;
 String? description;
 int? price_rent;
 String? Location;
 String? irrigation_typemodels;
 bool? avalability;

LandModel({required this.land_oner,required this.space,
required this.Location,required this.avalability,required this.description,
required this.title,required this.price_rent,required this.duration,required this.irrigation_typemodels,this.id
});

LandModel.fromJson(Map <String ,dynamic> json){
id=json["id"];
land_oner=json["land_oner"];
space=json["space"];
title=json["title"];
duration=json["duration"];
description=json["description"];
price_rent=json["price_rent"];
irrigation_typemodels=json["irrigation_typemodels"];
avalability=json["avalability"];

}

Map<String,dynamic>toJSON( ){

  return {
    "id":id,
    "land_oner":land_oner,
    "title":title,
    "duration":duration,
    "description":description,
    "price_rent":price_rent,
    "irrigation_typemodels":irrigation_typemodels,
    "space":space,
    "avalability":avalability
  };
  
  }
}
