import 'package:flutter/material.dart';
import 'package:time_app/Widgets/text_home.dart';
import "dart:async";

class TimeViewBody extends StatefulWidget {
  const TimeViewBody({
    Key? key,
  }) : super(key: key);

  @override
  State<TimeViewBody> createState() => _TimeViewBodyState();
}

class _TimeViewBodyState extends State<TimeViewBody> {
  /// Time
  int hour = 0;
  String min = "";
  String sec = "";

  /// Dates
  String dayWeek = "";
  String year = "";
  String month = "";
  String dayNumber = "";
  changeEverySecond() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        /// Time
        hour = DateTime.now().hour;
        if (hour > 12) {
          hour = hour - 12;
        }
        min = DateTime.now().minute.toString();
        sec = DateTime.now().second.toString();

        /// Date
        dayWeek = DateTime.now().day.toString();
        switch (dayWeek) {
          case "1":
            dayWeek = "monday";
            break;
          case "2":
            dayWeek = "Tuesday";
            break;
          case "3":
            dayWeek = "wednesday";
            break;
          case "4":
            dayWeek = "Thursday";
            break;
          case "5":
            dayWeek = "Friday";
            break;
          case "6":
            dayWeek = "Saturday";
            break;
          case "7":
            dayWeek = "Sunday";
            break;
        }
        year = DateTime.now().year.toString();
        month = DateTime.now().month.toString();
        switch (month) {
          case '1':
            month = 'January';
            break;
          case "2":
            month = "Feb";
            break;
          case "3":
            month = "March";
            break;
          case '4':
            month = 'April';
            break;
          case "5":
            month = "May ";
            break;
          case "6":
            month = "June";
            break;
          case '7':
            month = 'July';
            break;
          case "8":
            month = "August";
            break;
          case "9":
            month = "September";
            break;
          case '10':
            month = 'October';
            break;
          case "11":
            month = "November";
            break;
          case "12":
            month = "December";
            break;
        }
        dayNumber = DateTime.now().day.toString();
      });
    });
  }

  @override
  void initState() {
    changeEverySecond();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          /// {DateFormat('EEEE').format(DateTime.now())}
          TextHome(
            text: 'Today\'s Date is $dayWeek',
          ),
          TextHome(
            text: '$month $dayNumber , $year',
          ),
          TextHome(
            text:
                '${hour.toString().padLeft(2, '0')} : ${min.padLeft(2, '0')} : ${sec.padLeft(2, '0')}',
          ),
        ],
      ),
    );
  }
}
