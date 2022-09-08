import 'package:flutter/material.dart';
import 'package:testtechniquemobileflutter/app/modules/home/views/home_view.dart';



void main() async {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'test',
      home:  HomeView(),
    );
  }
}