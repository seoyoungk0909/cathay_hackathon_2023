import 'package:flutter/material.dart';
import 'components/travel_test_ui.dart';

class TravelTypeTestPage extends StatefulWidget {
  @override
  _TravelTypeTestPageState createState() => _TravelTypeTestPageState();
}

class _TravelTypeTestPageState extends State<TravelTypeTestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Travel Type Test Page'),
      ),
      body: Container(
        child: travelTestUI(context, "Title", 1, "question?"),
      ),
    );
  }
}
Bool