import 'package:flutter/material.dart';

class BuddyExpressPage extends StatefulWidget {
  const BuddyExpressPage({super.key});

  @override
  _BuddyExpressPageState createState() => _BuddyExpressPageState();
}

class _BuddyExpressPageState extends State<BuddyExpressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: const Center(
          child: Text('Buddy Express Page'),
        ),
      ),
    );
  }
}