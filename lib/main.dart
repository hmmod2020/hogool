import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hogool/UI/farmer_search_screen.dart';
import 'package:hogool/UI/homeNav.dart';
import 'package:hogool/UI/sing_in_farmer.dart';
import 'package:hogool/UI/sing_up_as_screen.dart';
import 'package:hogool/screens/auth/bloc/auth_bloc.dart';
import 'package:hogool/screens/auth/pages/signUpPage.dart';
import 'package:hogool/widgets/card_invesmet_selected.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'UI/account_farmer.dart';
import 'UI/account_farmer.dart';
import 'UI/create_invesment_screen.dart';
import 'UI/farmer_info_Screen.dart';
import 'UI/farmer_orders.dart';
import 'UI/land_screen.dart';
import 'UI/my_offers_screen.dart';
import 'UI/new_screen.dart';
import 'UI/projects_screen.dart';
import 'UI/testScreen.dart';
import 'UI/welcome_screen.dart';
import 'core/services/service_locator.dart'as di;
import 'core/themes/app_color.dart';


void main() async {
 WidgetsFlutterBinding.ensureInitialized();
 await di.init();
  runApp(hogoolApp());
}

class hogoolApp extends StatelessWidget {
  const hogoolApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => di.sl<AuthBloc>(),
        )
      ],
      child: CupertinoApp(
      theme: CupertinoThemeData(
        
        primaryColor: AppColor.primaryColor,
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
      home:WelcomeScreen(),
      routes: {
        "/signUpAs":(context) => SingUpAs(),
        "/welcomePage":(context) => WelcomeScreen(),
        "/singUpFarmer":(context) => SignUpScreen(),
        "/signIn":(context) => SignInScreen(),
        "/homeNav":(context) => HomeNav(),

    
      },
    ),
    );
  }
}
