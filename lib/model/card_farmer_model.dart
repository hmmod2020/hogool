
class cardFarmerModel{
int id;
 String image;
 String farmerName;
 String location;
 int exepiernce;
 List<String> crops;

cardFarmerModel({required this.id,required this.image,required this.farmerName,required this.location,required this.exepiernce,required this.crops});



Map<String,dynamic>toJSON( ){

  return {
    "id":id,
    "image":image,
    "location":location,
    "crops":crops,
    "exepiernce":exepiernce,
    "farmerName":farmerName

  };
  
  }
}
