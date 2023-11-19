import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:http/http.dart' as http;
import 'home_page.dart';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ChatPage extends StatefulWidget {
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
        body: Container(
            padding: EdgeInsets.only(top: 20),
            child: Column(children: [Image.asset('assets/icons/chat.png'),
            Container(margin:EdgeInsets.only(top: 182),
            
            child:Image.asset('assets/icons/inputBox.png'))]
            
            ),
        //     child: Container(
        //   child: Stack(
        //     children: [
        //       Positioned(
        //         top: 0,
        //         left: 0,
        //         child: SizedBox(
        //           width: MediaQuery.of(context).size.width,
        //           child: Image.asset('assets/imgs/banahill.png', fit: BoxFit.cover),
        //         ),
        //       ),
        //       Positioned(
        //         top: 170,
        //           child: SizedBox(
        //             width: MediaQuery.of(context).size.width,
        //             child: Image.asset('assets/icons/banahillFilled.png')),
        //         ),
            // ],
        //   ),
        // ))
        ));
  }
}