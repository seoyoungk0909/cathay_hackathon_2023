import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// import views
import 'main_page.dart';
import 'book_flight_page.dart';
import 'my_trips_page.dart';
import 'buddy_express_page.dart';
import 'more_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

// List of page names
  List<Widget> pages = [
    const MainPage(),
    const BookFlightPage(),
    const MyTripsPage(),
    const BuddyExpressPage(),
    const MorePage()
  ];

// Callback function to handle navigation
  void _onItemTapped(int index) {
    if ((index != 1) && (index != 2) && (index != 4)) {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: pages[_selectedIndex],
        ),
        bottomNavigationBar: SizedBox(
            child: BottomNavigationBar(
          backgroundColor: Theme.of(context).highlightColor,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              activeIcon: Container(
                  margin: const EdgeInsets.only(bottom: 4),
                  height: 30,
                  child: SvgPicture.asset(
                    'assets/icons/icon-home-active.svg',
                  )),
              icon: Container(
                  margin: const EdgeInsets.only(bottom: 4),
                  height: 30,
                  child: SvgPicture.asset(
                    'assets/icons/icon-home-inactive.svg',
                  )),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              activeIcon: Container(
                  margin: const EdgeInsets.only(bottom: 4),
                  height: 30,
                  child: SvgPicture.asset(
                    'assets/icons/icon-bookFlight-active.svg',
                  )),
              icon: Container(
                  margin: const EdgeInsets.only(bottom: 4),
                  height: 30,
                  child: SvgPicture.asset(
                    'assets/icons/icon-bookFlight-inactive.svg',
                  )),
              label: 'Book Flight',
            ),
            BottomNavigationBarItem(
              activeIcon: Container(
                  margin: const EdgeInsets.only(bottom: 4),
                  height: 30,
                  child: SvgPicture.asset(
                    'assets/icons/icon-myTrips-active.svg',
                  )),
              icon: Container(
                  margin: const EdgeInsets.only(bottom: 4),
                  height: 30,
                  child: SvgPicture.asset(
                    'assets/icons/icon-myTrips-inactive.svg',
                  )),
              label: 'My Trips',
            ),
            BottomNavigationBarItem(
              activeIcon: Container(
                  margin: const EdgeInsets.only(bottom: 4),
                  height: 30,
                  child: SvgPicture.asset(
                    'assets/icons/icon-buddyExpress-active.svg',
                  )),
              icon: Container(
                  margin: const EdgeInsets.only(bottom: 4),
                  height: 30,
                  child: SvgPicture.asset(
                    'assets/icons/icon-buddyExpress-inactive.svg',
                  )),
              label: 'Buddy Express',
            ),
            BottomNavigationBarItem(
              activeIcon: Container(
                  margin: const EdgeInsets.only(bottom: 4),
                  height: 30,
                  child: SvgPicture.asset(
                    'assets/icons/icon-more-active.svg',
                  )),
              icon: Container(
                  margin: const EdgeInsets.only(bottom: 4),
                  height: 30,
                  child: SvgPicture.asset(
                    'assets/icons/icon-more-inactive.svg',
                  )),
              label: 'More',
            ),
          ],
          selectedFontSize: 12.0,
          unselectedFontSize: 12.0,
          selectedItemColor: Theme.of(context).highlightColor,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        )));
  }
}
