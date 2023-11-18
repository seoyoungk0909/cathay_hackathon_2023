import 'package:flutter/material.dart';

Widget travelTestUI(
    BuildContext context, String title, int questionNumber, String question) {
  return Container(
    child: Column(
      children: [
        Text('Travel Personality Test',
            style: TextStyle(
              //textAlign: TextAlign.center,
              fontSize: 30,
            )),

//      Text("Q${1}"),

        Text('I would like to go to restaurants...',
            style: TextStyle(
              fontSize: 20,
            )),

// //아이콘, 텍스트
//                 Icon(
//                     Icon.flutter_dash,
//                     color: Color(0x702b91),
//                     size: 20
//                 ),

        Center(
          //   child: Container(
          // height: 100,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).highlightColor,
            ),
            onPressed: () {},
            child: Text(
              'With high ratings or Instagrammable place',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Theme.of(context).primaryColorLight,
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
            ),
          ),
          //)
        ),

        Center(
          // child: Container(
          //   height: 100,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).highlightColor,
            ),
            onPressed: () {},
            child: Text(
              'Where I can feel the authentic local vibes',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Theme.of(context).primaryColorLight,
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
            ),
          ),
          //)
        ),

        // Center(
        //   child: OutlinedButton(
        //     onPressed: () {},
        //     child: const Text("Next Q.>"),
        //     style: OutlinedButton.styleFrom(
        //       backgroundColor: Color(0x702B91),
        //     ),
        //   ),
        // ),

//         //진행률 바
      ],
    ), //column
  );
}
