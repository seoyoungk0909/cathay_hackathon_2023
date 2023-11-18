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
          question: "I would like to go to restaurants",
          category: "Food/Restaurants",
          option1: "With high ratings or Instagrammable place",
          option2: "Where I can feel the authentic local vibes",
        ),
      ),
    );
  }
}
