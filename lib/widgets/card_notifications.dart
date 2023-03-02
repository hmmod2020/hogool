import 'package:flutter/material.dart';

class CardNotificationsFramer extends StatelessWidget {
 
 late String nameInvestor;

  @override
  Widget build(BuildContext context) {
    nameInvestor="محمد البدري";
    return Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
          borderRadius:BorderRadius.all(Radius.circular(20)),
          color:Color(0xffF0F9F1),

          ),
          child: Column(
           
            children: [
              SizedBox(height: 15,),
              Expanded(child:
              Text("ارسل اليك المستثمر ${nameInvestor} طلب عمل ",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
              
              )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   Container(
                        margin: EdgeInsets.only(bottom: 20),
                        height: 35,
                        width: 80,
                        child: TextButton(
                                  style: ButtonStyle(
                                    backgroundColor:MaterialStateProperty.all( Color(0xff4CAF50)),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(9)
                                    ))
                                  ),
                                  onPressed: (){
                                   //////////////
                                   
                                   
                                  },
                                   child: Center(
                                     child: Text("التفاصيل",
                                     style: TextStyle(
                                      color: Colors.white,
                                      fontSize:13,
                                      fontWeight: FontWeight.bold
                                     ),
                                     ),
                                   )
                                    ,
                                   ),
                      ),
                    
                ],
              )
            ],
          ),
    );
  }
}