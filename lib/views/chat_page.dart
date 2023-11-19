import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
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
          padding: const EdgeInsets.only(top: 20),
          child: Column(children: [
            Image.asset('assets/icons/chat.png'),
            Container(
                margin: const EdgeInsets.only(top: 182),
                child: Image.asset('assets/icons/inputBox.png'))
          ]),
        ));
  }
}
