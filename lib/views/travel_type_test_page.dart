import 'package:flutter/material.dart';
import 'components/travel_test_ui.dart';

class TravelTypeTestPage extends StatefulWidget {
  const TravelTypeTestPage({super.key});

  @override
  _TravelTypeTestPageState createState() => _TravelTypeTestPageState();
}

class _TravelTypeTestPageState extends State<TravelTypeTestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Travel Type Test Page'),
      ),
      body: Container(
        child: TravelTestQuestion(
          title: "Title",
          questionNumber: 1,
          question: "I would like to visit...",
          category: "Experiences",
          option1: "Amusement parks \n filled with attractions.",
          option2: "Museums \n to learn in-depth history.",
        ),
/*
      child: TravelTestQuestion(
          title: "Title",
          questionNumber: 2,
          question: "I would like to shop in ... ",
          category: "Shopping",
          option1: "Night market \n for local goods.",
          option2: "Demartment \n store for luxury goods.",
        ),
      */



      ),
    );
  }
}
