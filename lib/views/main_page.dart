import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
        leading: Container(
          margin: const EdgeInsets.only(left: 30),
          child: SizedBox(
            width: 30,
            height: 30,
            child: SvgPicture.asset('icons/profile.svg'),
          ),
        ),
        title: SizedBox(
          width: 48,
          height: 45,
          child: SvgPicture.asset('icons/logo-white.svg'),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 30),
            width: 30,
            height: 30,
            child: SvgPicture.asset('icons/settings.svg'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
            // width: double.infinity,
            // height: double.infinity,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              Container(
                width: 328,
                height: 207,
                color: Theme.of(context).shadowColor,
                margin: const EdgeInsetsDirectional.fromSTEB(0, 21, 0, 14),
                child: Stack(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: SvgPicture.asset(
                        'imgs/mask-group.svg',
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
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      color: Theme.of(context).highlightColor,
                                      fontSize: 40,
                                      fontWeight: FontWeight.w900,
                                    ),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'TRAVEL WITH YOUR BUDDY',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(
                                  color: Theme.of(context).primaryColorLight,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                ),
                          ),
                          Container(
                            margin: const EdgeInsetsDirectional.fromSTEB(
                                0, 9, 0, 0),
                            child: Row(
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              // mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Theme.of(context).highlightColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 20, horizontal: 21),
                                  ),
                                  child: Text(
                                    'Pre-Flight',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(
                                          color: Theme.of(context)
                                              .primaryColorLight,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                                const SizedBox(width: 8),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Theme.of(context).splashColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 20, horizontal: 21),
                                  ),
                                  child: Text(
                                    'Flight',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(
                                          color: Theme.of(context)
                                              .primaryColorLight,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                                const SizedBox(width: 8),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Theme.of(context).highlightColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 20, horizontal: 21),
                                  ),
                                  child: Text(
                                    'Post-Flight',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(
                                          color: Theme.of(context)
                                              .primaryColorLight,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsetsDirectional.fromSTEB(0, 14, 0, 0),
                width: 114,
                height: 11,
                child: SvgPicture.asset('icons/menu-bar.svg'),
              ),
              Container(
                  margin: const EdgeInsetsDirectional.fromSTEB(0, 14, 0, 0),
                  padding: const EdgeInsets.all(14),
                  width: 393,
                  height: 294,
                  color: Theme.of(context).highlightColor,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            'Where would you like to go?',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(
                                  color: Theme.of(context).primaryColorLight,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                        Container(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                          width: 364,
                          height: 237,
                          child: SvgPicture.asset('imgs/search-flight.svg'),
                        )
                      ])),
              Container(
                padding: const EdgeInsets.all(16),
                margin: const EdgeInsets.only(left: 2),
                child: Row(
                  children: [
                    SizedBox(
                        height: 56,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.transparent,
                            backgroundColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 2,
                                  color: Theme.of(context).highlightColor),
                              borderRadius: BorderRadius.circular(0),
                            ),
                            elevation: 0,
                            padding: const EdgeInsets.symmetric(horizontal: 21),
                          ),
                          child: Text(
                            'Manage My\nBooking',
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      color: Theme.of(context).highlightColor,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                    ),
                          ),
                        )),
                    const SizedBox(width: 9),
                    SizedBox(
                        height: 56,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.transparent,
                            backgroundColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 2,
                                  color: Theme.of(context).highlightColor),
                              borderRadius: BorderRadius.circular(0),
                            ),
                            elevation: 0,
                            padding: const EdgeInsets.symmetric(horizontal: 21),
                          ),
                          child: Text(
                            'Check-in',
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      color: Theme.of(context).highlightColor,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                    ),
                          ),
                        )),
                    const SizedBox(width: 9),
                    SizedBox(
                        height: 56,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'travelTypeTest');
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.transparent,
                            backgroundColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 2,
                                  color: Theme.of(context).highlightColor),
                              borderRadius: BorderRadius.circular(0),
                            ),
                            elevation: 0,
                            padding: const EdgeInsets.symmetric(horizontal: 21),
                          ),
                          child: Text(
                            'Travel\nPersonality test',
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      color: Theme.of(context).highlightColor,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                    ),
                          ),
                        )),
                  ],
                ),
              )
            ])),
      ),
    ));
  }
}
