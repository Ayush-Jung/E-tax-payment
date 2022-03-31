import 'package:flutter/material.dart';
import 'package:flutter_application_1/SplashScreen.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/Location.dart';

import 'package:flutter_application_1/WelcomePage.dart';
import 'package:flutter_application_1/Login.dart';
import 'package:flutter_application_1/Personalinfo.dart';

// import 'package:esewa_manual_api_integration/esewa_epay.dart';

void main() {
  runApp(MyApp());
}
// }

class MyApp extends StatelessWidget {
  static String title;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Page',
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      home: Splash(),
      // home: PersonalPage(),

      routes: {
        LocationAccess.routeName: (ctx) => LocationAccess(),
        // Welcomescreen.routeName: (ctx) => Welcomescreen(),
        Splash.routeName: (ctx) => Splash(),
        Loginscreen.routeName: (ctx) => Loginscreen(),
        PersonalPage.routeName: (ctx) => PersonalPage(),
      },
    );
  }
}
