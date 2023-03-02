import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hogool/UI/farmer_search_screen.dart';
import 'package:hogool/UI/homeNav.dart';
import 'package:hogool/UI/sing_in_farmer.dart';
import 'package:hogool/UI/sing_up_as_screen.dart';
import 'package:hogool/widgets/card_invesmet_selected.dart';
import 'package:lottie/lottie.dart';
import 'UI/account_farmer.dart';
import 'UI/account_farmer.dart';
import 'UI/create_invesment_screen.dart';
import 'UI/farmer_info_Screen.dart';
import 'UI/farmer_orders.dart';
import 'UI/land_screen.dart';
import 'UI/my_offers_screen.dart';
import 'UI/new_screen.dart';
import 'UI/projects_screen.dart';
import 'UI/sign_up_farmer.dart';
import 'UI/testScreen.dart';
import 'UI/welcome_screen.dart';


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
      home:Test(),
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