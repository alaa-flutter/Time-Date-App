import 'package:flutter/material.dart';

class TextHome extends StatelessWidget {
  final String text;
  const TextHome({
    Key? key, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.only(top: 22),
      child: Text(
       text,
        style:const TextStyle(
          fontSize: 27,
          color: Colors.white,
        ),
      ),
    );
  }
}