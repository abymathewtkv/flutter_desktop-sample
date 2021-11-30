import 'package:flutter/material.dart';

import 'package:flutter_sample_desktop/LandingPage/navBarOne.dart';


class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Colors.white,
        
        
          child: Column(
            children: <Widget>[
              NavBar_One(),
              SizedBox(
                height: 50,
              ),

              Image.asset("assets/images/image1.png",height: 450,width: 450,)
          
            ],
          ),
        ),
        
      ),
    );
  }
}
