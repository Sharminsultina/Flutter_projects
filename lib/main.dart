import 'package:flutter/material.dart';
import 'package:flutter_projects/screen/onboarding/emailVerificationScreen.dart';
import 'package:flutter_projects/screen/onboarding/loginScreen.dart';
import 'package:flutter_projects/screen/onboarding/pinVarificationScreen.dart';
import 'package:flutter_projects/screen/onboarding/registrationScreen.dart';
import 'package:flutter_projects/screen/onboarding/setPasswordScreen.dart';
import 'package:flutter_projects/screen/onboarding/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Task Manager",
      initialRoute: '/login',
      routes: {
        '/':(context)=> splashScreen(),
        '/login':(context)=> loginScreen(),
        '/registration':(context)=> registrationScreen(),
        '/emailVerification':(context)=> emailVerificationScreen(),
        '/pinVerification':(context)=> pinVerificationScreen(),
        '/setPassword':(context)=> setPasswordScreen(),


      },
    );
  }
}
