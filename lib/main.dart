import 'package:flutter/material.dart';
import 'package:flutter_sample_desktop/BottomPage/bottomPage.dart';
import 'package:flutter_sample_desktop/Navbar/navbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter sample desktop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Montserrat",
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color.fromRGBO(0, 150, 150, 1.0),
            Color.fromRGBO(0, 100, 50, 1.0)
          ],
        )),
        child: Column(
          children: <Widget>[
            NavBar(),BottomPage(),
          ],
        ),
      ),
    );
  }
}
