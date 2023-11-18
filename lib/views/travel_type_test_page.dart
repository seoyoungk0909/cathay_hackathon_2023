import 'package:flutter/material.dart';

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
        child: Center(
          child: Text('This is the Travel Type Test Page'),
        ),
      ),
    );
  }
}
