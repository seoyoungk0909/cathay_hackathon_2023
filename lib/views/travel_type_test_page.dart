import 'package:flutter/material.dart';

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
        child: const Center(
          child: Text('This is the Travel Type Test Page'),
        ),
      ),
    );
  }
}
