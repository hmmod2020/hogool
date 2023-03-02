import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import '../widgets/card_notifications.dart';



class NotificationScreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Padding(
          padding: const EdgeInsets.only(top:30,right: 25,left: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("الإشعارات",
                        style: TextStyle(
                          fontSize: 40,
                          color: Color(0xff4CAF50),
                          fontWeight: FontWeight.bold
                        ),
                        ),

                ],
              ),
             CardNotificationsFramer()
              
            ],
          ),
        ),
      )
    );
  }
}

//,