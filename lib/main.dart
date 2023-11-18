import 'package:flutter/material.dart';
import 'utils/color_utils.dart';

// Import pages
import 'views/home_page.dart';
import 'views/book_flight_page.dart';
import 'views/my_trips_page.dart';
import 'views/buddy_express_page.dart';
import 'views/more_page.dart';
import 'views/main_page.dart';
import 'views/travel_type_test_page.dart';

// Import Firebase related packages
import 'package:firebase_core/firebase_core.dart';
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
          'mainPage': (context) => const MainPage(),
          'bookFlight': (context) => const BookFlightPage(),
          'myTrips': (context) => const MyTripsPage(),
          'buddyExpress': (context) => const BuddyExpressPage(),
          'more': (context) => const MorePage(),
          'travelTypeTest': (context) => const TravelTypeTestPage(),
            },
      theme: ThemeData(
        primaryColor: CustomColors.representBlack,
        primaryColorLight: CustomColors.representWhite,
        highlightColor: CustomColors.representPurple,
        splashColor: CustomColors.representMint,
        shadowColor: CustomColors.lightPurple,
        unselectedWidgetColor: CustomColors.grey,
        textTheme: const TextTheme(
    bodyLarge: TextStyle(
      fontFamily: 'Raleway',
    ),),
      ),
      home: const HomePage(),
    );
  }
}