import 'package:flutter/material.dart';

class BookFlightPage extends StatefulWidget {
  const BookFlightPage({super.key});

  @override
  _BookFlightPageState createState() => _BookFlightPageState();
}

class _BookFlightPageState extends State<BookFlightPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        child: const Center(
          child: Text('Book Flight Page'),
        ),
      ),
    );
  }
}
