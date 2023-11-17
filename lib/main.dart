import 'package:flutter/material.dart';
import 'views/home_page.dart';
import 'utils/color_utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
