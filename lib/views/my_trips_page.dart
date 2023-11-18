import 'package:flutter/material.dart';

class MyTripsPage extends StatefulWidget {
  const MyTripsPage({super.key});

  @override
  _MyTripsPageState createState() => _MyTripsPageState();
}

class _MyTripsPageState extends State<MyTripsPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: Implement the UI for MyTripsPage
        return Scaffold(
      body: Container(
        child: const Center(
          child: Text('Book Flight Page'),
        ),
      ),
    );

  }
}
