import 'package:flutter/material.dart';

class BottomPage extends StatelessWidget {

List<Widget> pageChildren() {

  return <Widget>[
    Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Simple Desktop \nApplication",style: TextStyle(
           fontSize: 40.0,
           fontWeight: FontWeight.bold,
           color: Colors.white,
          ),
          ),
          Text('Desktop support allows you to compile Flutter source code to a native Windows, macOS, or Linux desktop app.',style: TextStyle(
           fontSize: 16.0,
           color: Colors.white,
          ),
          ),
          
        ],
      ),
    ),
  ];
}

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(),

            
          );
        } else {
          return Column(
            children: pageChildren(),
          );
        }
      },
    );
  }
}
