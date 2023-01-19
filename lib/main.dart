import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hogool/UI/homeNav.dart';
import 'package:hogool/UI/sing_in_farmer.dart';
import 'package:hogool/UI/sing_up_as_screen.dart';
import 'package:hogool/UI/welcome_screen.dart';
import 'package:lottie/lottie.dart';

import 'UI/sign_up_farmer.dart';

void main() {
  runApp(
    MaterialApp(
      localizationsDelegates: [
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ],
  supportedLocales: [
    Locale('ar','AE'), // Arabic
  ],
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
      routes: {
        "/signUpAs":(context) => SingUpAs(),
        "/welcomePage":(context) => WelcomeScreen(),
        "/singUpFarmer":(context) => SingUpFarmer(),
        "/signIn":(context) => SignInScreen(),
        "/homeNav":(context) => HomeNav(),
      },
    )
  );
}