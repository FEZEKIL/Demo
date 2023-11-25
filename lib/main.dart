// ignore_for_file: avoid_print


import 'package:demo/welcome/onboarding_one_screen.dart';
import 'package:demo/welcome/onboarding_three_screen.dart';
import 'package:demo/welcome/onboarding_two_screen.dart';
import 'package:demo/welcome/splash_screen.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';

import 'package:provider/provider.dart';

import 'auth/signup.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
 
  runApp(MultiProvider(providers: [
   
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash_screen',
      routes: {
        '/splash_screen': (context) =>  SplashScreen(),
        '/onboarding_one_screen': (context) =>  OnboardingOneScreen(),
        'onboarding_two_screen': (context) =>  OnboardingTwoScreen(),
        '/onboarding_three_screen': (context) =>  OnboardingThreeScreen(),
        '/signup_create_account_screen': (context) =>  SignUpCreateAcountScreen(),
      },
    );
  }
}
