import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

/*Widget travelTestUI(BuildContext context, String title, int questionNumber,
    String question, String category, String option1, String option2) {
  return Container(
    // color: Colors.red,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
            child: Text(
          'Travel Type Test',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).primaryColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
        )),
        Text(
          'Q${questionNumber}.',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).highlightColor,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
        ),

        Container(
            margin: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
            child: Text(
              question,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Theme.of(context).primaryColor,
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                  ),
            )),
        Row(
          children: [
            Container(
                width: 39,
                height: 30,
                child: SvgPicture.asset("icons/hamburger.svg")),
            SizedBox(
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Theme.of(context).highlightColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  category,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Theme.of(context).primaryColorLight,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ),
          ],
        ),
        Center(
          child: Container(
            height: 92,
            width: 318,
            child: Material(
              elevation:
                  5, // Adjust the elevation value for the desired shadow intensity
              shadowColor: Colors.black
                  .withOpacity(0.3), // Adjust the shadow color and opacity
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).shadowColor,
                ),
                onPressed: () {},
                child: Center(
                    child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 25, 10, 25),
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      Text(
                        option1,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Theme.of(context).primaryColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                      ),
                    ],
                  ),
                )),
              ),
            ),
          ),
        ),

        Center(
          child: Container(
            height: 92,
            width: 318,
            child: Material(
              elevation:
                  5, // Adjust the elevation value for the desired shadow intensity
              shadowColor: Colors.black
                  .withOpacity(0.3), // Adjust the shadow color and opacity
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).shadowColor,
                ),
                onPressed: () {},
                child: Center(
                    child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 25, 10, 25),
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      Text(
                        option2,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Theme.of(context).primaryColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                      ),
                    ],
                  ),
                )),
              ),
            ),
          ),
        ),

// //아이콘, 텍스트
//                 Icon(
//                     Icon.flutter_dash,
//                     color: Color(0x702b91),
//                     size: 20
//                 ),

        // Center(
        //   //   child: Container(
        //   // height: 100,
        //   child: ElevatedButton(
        //     style: ElevatedButton.styleFrom(
        //       backgroundColor: Theme.of(context).highlightColor,
        //     ),
        //     onPressed: () {},
        //     child: Text(
        //       'With high ratings or Instagrammable place',
        //       style: Theme.of(context).textTheme.bodyLarge?.copyWith(
        //             color: Theme.of(context).primaryColorLight,
        //             fontSize: 20,
        //             fontWeight: FontWeight.normal,
        //           ),
        //     ),
        //   ),
        //   //)
        // ),

        // Center(
        // child: Container(
        //   height: 100,
        //   child: ElevatedButton(
        //     style: ElevatedButton.styleFrom(
        //       backgroundColor: Theme.of(context).highlightColor,
        //     ),
        //     onPressed: () {},
        //     child: Text(
        //       'Where I can feel the authentic local vibes',
        //       style: Theme.of(context).textTheme.bodyLarge?.copyWith(
        //             color: Theme.of(context).primaryColorLight,
        //             fontSize: 20,
        //             fontWeight: FontWeight.normal,
        //           ),
        //     ),
        //   ),
        //   //)
        // ),

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
*/

class TravelTestQuestion extends StatefulWidget {
  final String title;
  final int questionNumber;
  final String question;
  final String category;
  final String option1;
  final String option2;

  TravelTestQuestion({
    required this.title,
    required this.questionNumber,
    required this.question,
    required this.category,
    required this.option1,
    required this.option2,
  });

  @override
  _TravelTestQuestionState createState() => _TravelTestQuestionState();
}

class _TravelTestQuestionState extends State<TravelTestQuestion> {
  int selectedOption = 0; // Maintain the selected option index as state

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 92,
        width: 318,
        child: Material(
          elevation: selectedOption == 0 ? 5 : 0,
          shadowColor: Colors.black.withOpacity(0.3),
          child: Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: selectedOption == 0
                      ? Theme.of(context).shadowColor
                      : Theme.of(context).highlightColor,
                ),
                onPressed: () {
                  setState(() {
                    selectedOption = 0;
                  });
                },
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      Text(
                        widget.option1,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: selectedOption == 0
                                  ? Theme.of(context).primaryColorLight
                                  : Theme.of(context).primaryColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: selectedOption == 1
                      ? Theme.of(context).shadowColor
                      : Theme.of(context).highlightColor,
                ),
                onPressed: () {
                  setState(() {
                    selectedOption = 1;
                  });
                },
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      Text(
                        widget.option2,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: selectedOption == 1
                                  ? Theme.of(context).primaryColorLight
                                  : Theme.of(context).primaryColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
