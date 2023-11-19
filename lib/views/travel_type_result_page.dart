import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class TravelTypeResultPage extends StatefulWidget {
  const TravelTypeResultPage({super.key});

  @override
  _TravelTypeResultPageState createState() => _TravelTypeResultPageState();
}

class _TravelTypeResultPageState extends State<TravelTypeResultPage> {
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
            child: 
            
            SvgPicture.asset('assets/icons/logo-white.svg'),
          ),
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 20),
              width: 20,
              height: 20,
              child:             SvgPicture.asset('assets/icons/share.svg'),


            ),
          ],
        ),
      body: GestureDetector(
  onTap: () {
    Navigator.pushNamed(context, 'recommendedDestination');
  },
        child: Center(child: Image.asset('assets/imgs/testResult.png')), 
      ));
      }}





