import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'components/buddy_express_ui.dart';

class BuddyExpressPage extends StatefulWidget {
  const BuddyExpressPage({super.key});

  @override
  _BuddyExpressPageState createState() => _BuddyExpressPageState();
}

class _BuddyExpressPageState extends State<BuddyExpressPage> {
    int selectedButtonIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).highlightColor,
          leading:
              Container(
                margin: const EdgeInsets.only(left: 30),
                child: SizedBox(
                  width: 30,
                  height: 30,
                  child: SvgPicture.asset('assets/icons/profile.svg'),
                ),
          ),
          title: GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/'); // Navigate back to the home page
      },
      child:
          SizedBox(
            width: 48,
            height: 45,
            child: SvgPicture.asset('assets/icons/logo-white.svg'),
          ),),
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 30),
              width: 30,
              height: 30,
              child: SvgPicture.asset('assets/icons/settings.svg'),
            ),
          ],
        ),
        body: SingleChildScrollView(child: Container(
          padding: EdgeInsets.only(top: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                width: 351,
                height: 75,
                color: Theme.of(context).shadowColor,
                child: SvgPicture.asset('assets/imgs/advert.svg')
              )),
              Container(
                width: 351,
                margin: EdgeInsets.only(top: 28, bottom: 10, left: 20),
                child: 
            
                Row(
      children: [
        Container(
          padding: EdgeInsets.all(2),
          height: 30,
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                selectedButtonIndex = 0;
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: selectedButtonIndex == 0 ? Theme.of(context).highlightColor : Theme.of(context).unselectedWidgetColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              elevation: 0,
              padding: const EdgeInsets.symmetric(horizontal: 5),
            ),
            child: Text(
              'Latest',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Theme.of(context).primaryColorLight,
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                  ),
            ),
          ),
        ),
        Container(
                    padding: EdgeInsets.all(2),

          height: 30,
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                selectedButtonIndex = 1;
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: selectedButtonIndex == 1 ? Theme.of(context).highlightColor : Theme.of(context).unselectedWidgetColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              elevation: 0,
              padding: const EdgeInsets.symmetric(horizontal: 5),
            ),
            child: Text(
              'Popularity',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Theme.of(context).primaryColorLight,
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                  ),
            ),
          ),
        ),
        Container(
                    padding: EdgeInsets.all(2),

          height: 30,
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                selectedButtonIndex = 2;
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: selectedButtonIndex == 2 ? Theme.of(context).highlightColor : Theme.of(context).unselectedWidgetColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              elevation: 0,
              padding: const EdgeInsets.symmetric(horizontal: 5),
            ),
            child: Text(
              'Views',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Theme.of(context).primaryColorLight,
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                  ),
            ),
          ),
        ),
        SizedBox(width: 10),
        Container(height: 28, 
                  margin: EdgeInsets.all(2),

        child: ElevatedButton(
  onPressed: () {
  },
  style: ElevatedButton.styleFrom(
    foregroundColor: Colors.transparent, backgroundColor: Colors.transparent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5),
            side: BorderSide(width: 1, color: Theme.of(context).highlightColor),

    ),
    elevation: 0,
    padding: const EdgeInsets.symmetric(horizontal: 5),
  ),
  child: Row(children:[ Container(width:15, height: 11, padding: EdgeInsets.only(right: 2), child: SvgPicture.asset("assets/icons/filter.svg")),
    Text(
    'Search',
    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
      color: Theme.of(context).highlightColor,
      fontSize: 10,
      fontWeight: FontWeight.normal,
    ),
  ),
  ]),
)),Container(height: 28, 
                  margin: EdgeInsets.all(2),
child: ElevatedButton(
  onPressed: () {
  },
  style: ElevatedButton.styleFrom(
    foregroundColor: Colors.transparent, backgroundColor: Colors.transparent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5),
            side: BorderSide(width: 1, color: Theme.of(context).highlightColor),

    ),
    elevation: 0,
    padding: const EdgeInsets.symmetric(horizontal: 5),
  ),
  child: Row(children:[ Container(width:15, height: 11, padding: EdgeInsets.only(right: 2), child: SvgPicture.asset("assets/icons/filter.svg")),
    Text(
    'Region',
    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
      color: Theme.of(context).highlightColor,
      fontSize: 10,
      fontWeight: FontWeight.normal,
    ),
  ),
  ]),
)),

      ],
    )
              ),
              Container(margin: EdgeInsets.only(left: 21), child: Text(
          "Attractions",
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: Theme.of(context).primaryColor,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          )),
        ),
Container(height: 230,
margin: EdgeInsets.only(top: 5, left: 15),
  child: ListView(
    scrollDirection: Axis.horizontal,
    children: [
      eventUI(context),
      eventUI(context),
      eventUI(context),
    ],
  )),
  Container(margin: EdgeInsets.only(left: 21, top: 10), child: Text(
          "Food",
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: Theme.of(context).primaryColor,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          )),
        ),
Container(height: 230,
margin: EdgeInsets.only(top: 5, left: 15),
  child: ListView(
    scrollDirection: Axis.horizontal,
    children: [
      eventUI(context),
      eventUI(context),
      eventUI(context),
    ],
  )),
  Container(margin: EdgeInsets.only(left: 21, top: 10), child: Text(
          "Activities",
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: Theme.of(context).primaryColor,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          )),
        ),
Container(height: 230,
margin: EdgeInsets.only(top: 5, left: 15),
  child: ListView(
    scrollDirection: Axis.horizontal,
    children: [
      eventUI(context),
      eventUI(context),
      eventUI(context),
    ],
  )),
  Container(margin: EdgeInsets.only(left: 21, top: 10), child: Text(
          "Bar",
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: Theme.of(context).primaryColor,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          )),
        ),
Container(height: 230,
margin: EdgeInsets.only(top: 5, left: 15),
  child: ListView(
    scrollDirection: Axis.horizontal,
    children: [
      eventUI(context),
      eventUI(context),
      eventUI(context),
    ],
  )),
            ]
          ),

        ))));
  }
}