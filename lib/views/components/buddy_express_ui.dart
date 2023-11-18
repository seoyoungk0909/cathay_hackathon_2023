import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget eventUI(BuildContext context){
    return 
Container(
  width: 180,
  height: 100,
  margin: EdgeInsets.all(8),
  decoration: ShapeDecoration(
    image: DecorationImage(
      image: NetworkImage("https://i0.wp.com/billypenn.com/wp-content/uploads/2022/07/ovalferriswheel-sunsetcrop.jpg?fit=2400%2C1350&ssl=1"),
      fit: BoxFit.cover,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    shadows: [
      BoxShadow(
        color: Color(0x3F000000),
        blurRadius: 4,
        offset: Offset(2, 2),
        spreadRadius: 0,
      )
    ],
  ),
  child: Stack(
    children:[
        Positioned(
                left: 0,
                top: 140,
                child: 
                
                Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
  width: 180,
  height: 76,
  decoration: ShapeDecoration(
    color: Color(0xFFF5F5F5),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        padding: EdgeInsets.only(bottom: 10),
        child: Text(
          "Jan 9th 12:00PM",
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: Theme.of(context).primaryColor,
            fontSize: 10,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Text(
              "2 People",
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).primaryColor,
                fontSize: 10,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 6),
            child: SvgPicture.asset('assets/icons/people.svg'),
          ),
        ],
      ),
      Container(
        child: Text(
          "Gender: No Preference",
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: Theme.of(context).primaryColor,
            fontSize: 10,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    ],
  ),
),

              ),
        Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 180,
                  height: 33,
                  decoration: ShapeDecoration(
                    color: Color(0xFFF5F5F5),
                    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
      ),
    ),
                  ),
                  child: Center(child:Text("Join me for a walk@Asia Park",                       style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: Theme.of(context).primaryColor,
              fontSize: 10,
              fontWeight: FontWeight.w600))
),
)),

    ]
  )
);}
