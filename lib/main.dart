import 'package:flutter/material.dart';
import 'package:hogool/UI/sing_up_as_screen.dart';
import 'package:hogool/UI/welcome_screen.dart';
import 'package:lottie/lottie.dart';

import 'UI/sign_up_farmer.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
      routes: {
        "/signUpAs":(context) => SingUpAs(),
        "/welcomePage":(context) => WelcomeScreen(),
        "/singUpFarmer":(context) => SingUpFarmer(),
      },
    )
  );
}