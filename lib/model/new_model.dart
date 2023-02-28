
class NewModel{
  
 int? id;
 String? titel;
 String? pic;
 String? contents;
 bool? avalability;
 

NewModel({this.id, this.titel, this.pic,this.contents,this.avalability});

NewModel.fromJson(Map <String ,dynamic> json){
id=json["id"];
titel=json["titel"];
pic=json["pic"];
contents=json["contents"];
avalability=json["avalability"];
}

Map<String,dynamic>toJSON( ){

  return {
    "id":id,
    "titel":titel,
    "pic":pic,
    "contents":contents,
    "avalability":avalability
  };

}



}