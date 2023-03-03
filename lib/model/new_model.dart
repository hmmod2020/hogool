
class NewModel{
  
 int? id;
 String? title;
 String? pic;
 String? contnet;
 bool? avalability;
 

NewModel({this.id, this.title, this.pic,this.contnet,this.avalability});

NewModel.fromJson(Map <String ,dynamic> json){
id=json["id"];
title=json["title"];
pic=json["pic"];
contnet=json["contnet"];
avalability=json["avalability"];
}

Map<String,dynamic>toJSON( ){

  return {
    "id":id,
    "titel":title,
    "pic":pic,
    "contents":contnet,
    "avalability":avalability
  };

}



}