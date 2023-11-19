import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RegisterEventPage extends StatefulWidget {
  const RegisterEventPage({super.key});

  @override
  _RegisterEventPageState createState() => _RegisterEventPageState();
}

class _RegisterEventPageState extends State<RegisterEventPage> {
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
        body: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'chat');
            },
            child: Center(
              child: Container(
                  child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset('assets/imgs/banahill.png',
                          fit: BoxFit.cover),
                    ),
                  ),
                  Positioned(
                    top: 170,
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset('assets/icons/banahillFilled.png')),
                  ),
                ],
              )),
            )));
  }
}
