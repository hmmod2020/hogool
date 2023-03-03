
class InvesmentModel{
 int? id ;
 int? owner;
 int? financing ;
 String? description;
 String? title;
 String? location;
 int? duration;
 String? description_the_land;
 String? irrigation_typemodels;
 int? space;
 bool? avalability;

     

InvesmentModel({
required this.description,required this.description_the_land,
required this.financing,this.avalability, required this.owner,required this.location,
required this.irrigation_typemodels,required this.duration,required this.space,required this.title,this.id
});

InvesmentModel.fromJson(Map <String ,dynamic> json){
id=json["id"];
owner=json["owner"];
financing=json["financing"];
description=json["description"];
title=json["title"];
location=json["location"];
duration=json["duration"];
irrigation_typemodels=json["irrigation_typemodels"];
description_the_land=json["description_the_land"];
space=json["space"];
avalability=json["avalability"];
}

Map<String,dynamic>toJSON( ){

  return {
    "id":id,
    "owner":owner,
    "financing":financing,
    "description":description,
    "title":title,
    "location":location,
    "duration":duration,
    "irrigation_typemodels":irrigation_typemodels,
    "description_the_land":description_the_land,
    "space":space,
    "avalability":avalability

  };
  
  }
}
