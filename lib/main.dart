import 'package:flutter/material.dart';
import 'views/home_page.dart';
import 'utils/color_utils.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // await Firebase.initializeApp(
    // options: FirebaseOptions(
    //   apiKey: "AIzaSyASK3E388JWbsiiSe_w1IE20Rzhip960t8",
    //   appId: "1:781459256848:ios:f22ddb1e0b9e1db0a4bc95",
    //   messagingSenderId: "781459256848",
    //   projectId: "cathay-hackathon-2023-30761",
    // ),
  // );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello",
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      theme: ThemeData(
        primaryColor: CustomColors.representBlack,
        primaryColorLight: CustomColors.representWhite,
        highlightColor: CustomColors.representOrange,
      ),
      home: const HomePage(),
    );
  }
}
