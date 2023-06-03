import 'package:flutter/material.dart';
import 'package:time_app/Views/time_view_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Time & Date',
          style: TextStyle(
            fontSize: 27,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 57, 73, 80),
      ),
      backgroundColor: const Color.fromARGB(255, 33, 40, 43),
      body: const TimeViewBody(),
    );
  }
}
