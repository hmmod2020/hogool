import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hogool/UI/farmer_search_screen.dart';
import 'package:hogool/UI/homeNav.dart';
import 'package:hogool/UI/sing_in_farmer.dart';
import 'package:hogool/UI/sing_up_as_screen.dart';
import 'package:hogool/UI/welcome_screen.dart';
import 'package:lottie/lottie.dart';

import 'UI/farmer_info_Screen.dart';
import 'UI/land_screen.dart';
import 'UI/new_screen.dart';
import 'UI/projects_screen.dart';
import 'UI/sign_up_farmer.dart';

void main() {
  runApp(
    CupertinoApp(
      theme: CupertinoThemeData(
        
        primaryColor: Color(0xff4CAF50),
      ),
      localizationsDelegates: [
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ],
  supportedLocales: [
    Locale('ar','AE'), // Arabic
  ],
      debugShowCheckedModeBanner: false,
      home: LandScreen(),
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