import 'package:flutter/material.dart';
import 'components/travel_test_ui.dart';
import 'package:flutter_svg/svg.dart';

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
        backgroundColor: Theme.of(context).highlightColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,
              color: Theme.of(context).primaryColorLight),
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
        ),
        title: SizedBox(
          width: 48,
          height: 45,
          child: SvgPicture.asset('assets/icons/logo-white.svg'),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20),
            width: 20,
            height: 20,
            child: SvgPicture.asset('assets/icons/share.svg'),
          ),
        ],
      ),
      body: Container(
        child: const TravelTestQuestion(
          questionNumber: 1,
          question: "I would like to visit...",
          category: "Experiences",
          option1: "Amusement parks \n filled with attractions.",
          option2: "Museums \n to learn in-depth history.",
        ),
      ),
    );
  }
}
