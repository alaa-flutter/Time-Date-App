import 'package:flutter/material.dart';
import 'package:time_app/Widgets/text_home.dart';

class TimeViewBody extends StatelessWidget {
  const TimeViewBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          TextHome(
            text: 'Today\'s Date is Sunday',
          ),
        ],
      ),
    );
  }
}
