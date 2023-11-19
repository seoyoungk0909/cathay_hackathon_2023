import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'component/main_page_ui.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

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
          title: SizedBox(
            width: 48,
            height: 45,
            child: SvgPicture.asset('assets/icons/logo-white.svg'),
          ),
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
          // width: double.infinity,
          // height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Container(
                width: 360,
                height: 245,
                color: Theme.of(context).shadowColor,
                margin: const EdgeInsetsDirectional.fromSTEB(0, 21, 0, 14),
              child: Stack(
    children: [
      SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SvgPicture.asset(
          'assets/imgs/mask-group.svg',
          fit: BoxFit.cover,
        ),
      ),
      Positioned(
        top: 16,
        left: 16,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Gather\nTogether',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: Theme.of(context).highlightColor,
              fontSize: 40,
              fontWeight: FontWeight.w900,
            ),
            ),
            const SizedBox(height: 16),
                        Text(
              'TRAVEL WITH YOUR BUDDY',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: Theme.of(context).primaryColorLight,
              fontSize: 15,
              fontWeight: FontWeight.w800,
            ),
            ),
            Container(
              margin: const EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
              child: Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).highlightColor,
                    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10.5),
                  ),
                  child: Text(
              'Pre-Booking',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: Theme.of(context).primaryColorLight,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
            ),
                ),
                const SizedBox(width: 8),

                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).splashColor,
                    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10.5),
                  ),
                  child: Text(
              'Pre-Flight',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: Theme.of(context).primaryColorLight,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
            ),
                ),
                                const SizedBox(width: 8),

                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).highlightColor,
                    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10.5),
                  ),
                  child: Text(
              'Post-Flight',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: Theme.of(context).primaryColorLight,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
            ),
                ),
              ],
            ),),
          ],
        ),
      ),
    ],
  ),
            ),
            Container(
              margin: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                width: 114,
                height: 11,
                child: SvgPicture.asset('assets/icons/menu-bar.svg'),
            ),
            Container(
                            margin: const EdgeInsetsDirectional.fromSTEB(0, 14, 0, 0),
                            padding: const EdgeInsets.all(14),
                width: 393,
                height: 294,
                color: Theme.of(context).highlightColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Container(
                      child: Text(
              'Where would you like to go?',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: Theme.of(context).primaryColorLight,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            ),
                    ),
                    Container(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                      width: 364,
                      height: 237,
                      child: SvgPicture.asset('assets/imgs/search-flight.svg'),
                    )
                  ]
                )
            ),

            Container(
              padding: const EdgeInsets.all(14),
              child: Row(
  children: [
SizedBox(height: 56, child: ElevatedButton(
  onPressed: () {
  },
  style: ElevatedButton.styleFrom(
    foregroundColor: Colors.transparent, backgroundColor: Colors.transparent,
    shape: RoundedRectangleBorder(
      side: BorderSide(width: 2, color: Theme.of(context).highlightColor),
      borderRadius: BorderRadius.circular(0),
    ),
    elevation: 0,
    padding: const EdgeInsets.symmetric(horizontal: 20),
  ),
  child: Text(
    'Manage My\nBooking',
    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
      color: Theme.of(context).highlightColor,
      fontSize: 14,
      fontWeight: FontWeight.w700,
    ),
  ),
)),
const SizedBox(width: 9),
SizedBox(height: 56, child: ElevatedButton(
  onPressed: () {
  },
  style: ElevatedButton.styleFrom(
    foregroundColor: Colors.transparent, backgroundColor: Colors.transparent,
    shape: RoundedRectangleBorder(
      side: BorderSide(width: 2, color: Theme.of(context).highlightColor),
      borderRadius: BorderRadius.circular(0),
    ),
    elevation: 0,
    padding: const EdgeInsets.symmetric(horizontal: 20),
  ),
  child: Text(
    'Check-in',
    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
      color: Theme.of(context).highlightColor,
      fontSize: 14,
      fontWeight: FontWeight.w700,
    ),
  ),
)),
const SizedBox(width: 9),

SizedBox(height: 56, child: ElevatedButton(
  onPressed: () {
    Navigator.pushNamed(context, 'travelTypeTest');
  },
  style: ElevatedButton.styleFrom(
    foregroundColor: Colors.transparent, backgroundColor: Colors.transparent,
    shape: RoundedRectangleBorder(
      side: BorderSide(width: 2, color: Theme.of(context).highlightColor),
      borderRadius: BorderRadius.circular(0),
    ),
    elevation: 0,
    padding: const EdgeInsets.symmetric(horizontal: 20),
  ),
  child: Text(
    'Travel\nType test',
    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
      color: Theme.of(context).highlightColor,
      fontSize: 14,
      fontWeight: FontWeight.w700,
    ),
  ),
)),
  ],
),
            )
          ])
        ),
      ),
    ));
  }
}
