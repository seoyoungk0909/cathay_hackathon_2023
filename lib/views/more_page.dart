import 'package:flutter/material.dart';

class MorePage extends StatefulWidget {
  const MorePage({super.key});

  @override
  _MorePageState createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: const Center(
          child: Text('This is the More Page'),
        ),
      ),
    );
  }
}
