import 'package:flutter/material.dart';
import 'package:flutter_sample_desktop/LandingPage/navBarOne.dart';


class LandingPage extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       
        body: Container(
           decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromRGBO(0, 150, 150, 1.0),
                Color.fromRGBO(0, 100, 150, 1.0),
              ],
            ),
          ),
          child: Column(
            children: <Widget>[
              NavBar_One(),
            ],
          ),
      
    
        ),
        
      ),
    );
  }
}