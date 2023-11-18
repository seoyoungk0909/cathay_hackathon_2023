import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '/controllers/event_controller.dart';
import 'package:intl/intl.dart';

Widget eventUI(BuildContext context, EventController controller) {
  return Container(
      height: 230,
      margin: const EdgeInsets.all(8),
      decoration: ShapeDecoration(
        image: DecorationImage(
          image: NetworkImage(controller.event.photoLink),
          fit: BoxFit.cover,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(2, 2),
            spreadRadius: 0,
          )
        ],
      ),
      child: Stack(children: [
        Positioned(
          left: 0,
          top: 140,
          child: Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            width: 180,
            height: 76,
            decoration: ShapeDecoration(
              color: const Color(0xFFF5F5F5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    DateFormat("MMM dd 'at' h:mma")
                        .format(controller.event.eventTime),
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
                        '${controller.event.capacity.toString()} people',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Theme.of(context).primaryColor,
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 6),
                      child: SvgPicture.asset('assets/icons/people.svg'),
                    ),
                  ],
                ),
                Container(
                  child: Text(
                    "Gender: ${controller.event.gender}",
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
              decoration: const ShapeDecoration(
                color: Color(0xFFF5F5F5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
              ),
              child: Center(
                  child: Text(controller.event.title,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Theme.of(context).primaryColor,
                          fontSize: 10,
                          fontWeight: FontWeight.w600))),
            )),
      ]));
}
