import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';


class SideBar extends StatelessWidget {
  SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 400,
          width: 300,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius:
              BorderRadius.circular(25)),
          child: TableCalendar(
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(2031, 3, 14),
            focusedDay: DateTime.now(),
          ),
        ),
        // Container(
        //   height: 450,
        //   width: 300,
        //   decoration: BoxDecoration(
        //       color: Colors.white,
        //       borderRadius:
        //       BorderRadius.circular(25)),
        //   // child: GetMaps(),
        // ),
      ],
    );
  }
}
