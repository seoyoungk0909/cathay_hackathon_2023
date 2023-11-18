import 'package:flutter/material.dart';
import 'utils/color_utils.dart';

// Import pages
import 'views/home_page.dart';
import 'views/book_flight_page.dart';
import 'views/my_trips_page.dart';
import 'views/buddy_express_page.dart';
import 'views/more_page.dart';
import 'views/main_page.dart';

// Import Firebase related packages
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'firebase_options.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Team 30",
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
          // '/': (context) => HomePage(),
          'mainPage': (context) => MainPage(),
          'bookFlight': (context) => BookFlightPage(),
          'myTrips': (context) => MyTripsPage(),
          'buddyExpress': (context) => BuddyExpressPage(),
          'more': (context) => MorePage(),
            },
      theme: ThemeData(
        primaryColor: CustomColors.representBlack,
        primaryColorLight: CustomColors.representWhite,
        highlightColor: CustomColors.representPurple,
        splashColor: CustomColors.representMint,
              textTheme: TextTheme(
    bodyText1: TextStyle(
      fontFamily: 'Railway',
    ),),
      ),
      home: const HomePage(),
    );
  }
}
