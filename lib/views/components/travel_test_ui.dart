import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 30),
                child: Center(
                  child: Text(
                    'Travel Type Test',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Theme.of(context).primaryColor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsetsDirectional.fromSTEB(40, 10, 10, 1),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Q${widget.questionNumber}.',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Theme.of(context).highlightColor,
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsetsDirectional.fromSTEB(40, 1, 10, 10),
                alignment: Alignment.centerLeft,
                child: Text(
                  widget.question,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Theme.of(context).primaryColor,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsetsDirectional.fromSTEB(40, 1, 10, 10),
                    width: 39,
                    height: 30,
                    child: SvgPicture.asset("assets/icons/ferris-wheel.svg"),
                  ),
                  SizedBox(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Theme.of(context).highlightColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        widget.category,
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
              SizedBox(height: 10),
              Container(
                width: 318,
                child: Column(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: selectedOption == 0
                            ? Theme.of(context).shadowColor
                            : Color(0xd9d9d9), // Set the color for the unselected button
                        padding: EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 10,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3),
                        ),
                        minimumSize: Size(318, 92),
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
                                color: widget.option1 == 'Amusement parks' || widget.option1 == 'Museums'
                                    ? Colors.black
                                    : Theme.of(context).textTheme.bodyText2?.color,
                                fontSize: 18,
                                fontWeight: widget.option1 == 'Amusement parks' || widget.option1 == 'Museums'
                                    ? FontWeight.bold
                                    : FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: selectedOption == 1
                            ? Theme.of(context).shadowColor
                            : Color(0xd9d9d9), // Set the color for the unselected button
                        padding: EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 10,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3),
                        ),
                        minimumSize: Size(318, 92),
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
                                color: widget.option2 == 'Amusement parks' || widget.option2 == 'Museums'
                                    ? Colors.black
                                    : Theme.of(context).textTheme.bodyText2?.color,
                                fontSize: 18,
                                fontWeight: widget.option2 == 'Amusement parks' || widget.option2 == 'Museums'
                                    ? FontWeight.bold
                                    : FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 7),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 10, 10, 10),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              Navigator.pushNamed(context, 'travelTypeResult');
                            });
                          },
                          child: Ink(
                            decoration: BoxDecoration(
                              color: Theme.of(context).highlightColor,
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(15, 6, 15, 6),
                              child: Text(
                                'Next Q. >',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
