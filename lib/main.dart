import 'package:flutter/material.dart';
import 'package:testtechniquemobileflutter/app/modules/home/views/home_view.dart';



void main() async {
  runApp(MyApp());
}

//Api key
//AIzaSyDrOE3yK4G2HOLxvVRJHqT-dOzFSAmwSRg
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'test',
      home:  HomeView(),
    );
  }

  // getHomePage() async {
  //   final SharedPreferences prefs = await SharedPreferences.getInstance();
  //   String? token = prefs.getString("token");
  //   if (token != null) {
  //   } else {
  //     const VideoPlayerApp();
  //   }
  // }
}