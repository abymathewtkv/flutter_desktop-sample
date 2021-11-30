

import 'package:flutter/material.dart';
import 'package:flutter_sample_desktop/BottomPage/bottomPage.dart';
import 'package:flutter_sample_desktop/LoginPage/loginPage.dart';
import 'package:flutter_sample_desktop/main.dart';

class NavBar_One extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 38, horizontal: 45),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.0),
                  gradient: LinearGradient(
                    colors: [Color(0xFF039BE5), Color(0xFFE1F5FE)],
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                  ),
                ),
                child: Center(
                  child: Text(
                    'W',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: (FontWeight.bold)),
                  ),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                "Windows",
                style: TextStyle(
                    fontSize: 26,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                "Home",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                "Products",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                "Features",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 30,
              ),
              MaterialButton(
                  color: Colors.blue[300],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                  onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
               
                  },
                  child: Icon(Icons.arrow_back)),
            ],
          ),
        ]));
  }
}
