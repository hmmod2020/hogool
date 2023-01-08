import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:hogool/UI/sing_up_as_screen.dart';
import 'package:hogool/network/global_data.dart';
import 'package:lottie/lottie.dart';
import '../model/sign_up_model.dart';



class WelcomeScreen extends StatelessWidget {


static String welcomePage="/welcomePage";



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Column(
            children: [
              Expanded(
                flex: 5,
                child:Padding(
                  padding: const EdgeInsets.all(25),
                  child: Center(
                    child:Lottie.asset("assets/welcome.json",repeat: true)
                  ),
                )
              
               ),
              Expanded(
                flex: 1,
                child: Center(
                  child: Text("تطبيق حقول ",
                  style: TextStyle(
                    fontSize: 35,
                    color: Color(0xff4CAF50),
                  ),
                  ),
                )
      
              ),
               Expanded(
                flex: 1,
                child: Center(
                  child:Text(
                    "الآن يمكنك أن تحظى بأفضل الفرص في الاستثمار \n الزراعي والزراعة بضغطة زر بكل راحة وأينما كنت.",
                    style: TextStyle(
                    fontSize: 18,
                  ),
                  ) ,
                )
      
              ),
              Expanded(
                flex: 2,
                child:Container(
                  margin: EdgeInsets.only(bottom: 30,top: 30),
                  child: statrButton(context))), 
                
            ],
          ),
      )
    );
  }

  Widget statrButton(BuildContext context){
  return Container(
     
    child: InkWell(
      child: Container(
        child: Center(
          child: Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(right: 7),
                child: Icon(Icons.arrow_back,
                color: Colors.white,
                ),
              ),
              Text("ابدأ الآن مع حُقُول",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
              ),
              ),
            ],
          ),
        ),
        margin: EdgeInsets.all(18),
        decoration:BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          color:  Color(0xff4CAF50),
        ) ,
        width: double.infinity,
        height: double.infinity,
      ),
      onTap: () { 
         Navigator.of(context).pushNamed(SingUpAs.signUpAs);
      },
),
  );
}


}