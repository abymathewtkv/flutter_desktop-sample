

import 'package:flutter/material.dart';
import 'package:flutter_sample_desktop/LandingPage/landingPage.dart';



class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  AlertDialog showAlertDialogue() => AlertDialog(
        title: Text("Alert Dialogue"),
        content: Text('You have successfully logged in'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => LandingPage()));
             
            },
            child: Text('Continue'),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color.fromRGBO(0, 150, 150, 1.0),
              Color.fromRGBO(0, 100, 150, 1.0)
            ],
          ),
        ),

        ),
        elevation: 0.0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color.fromRGBO(0, 150, 150, 1.0),
              Color.fromRGBO(0, 100, 150, 1.0)
            ],
          ),
        ),
        child: Center(
          child: Container(
            width: 350,
            height: 360,
            child: Card(
              elevation: 5.0,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                          child: SingleChildScrollView(
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                  "assets/images/windows1.png",
                                  height: 80,
                                  width: 80,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Enter Username";
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.person),
                                    hintText: 'Username',
                                    focusColor: Colors.blue[700],
                                    contentPadding:
                                        EdgeInsets.only(left: 20, right: 20),
                                    border: OutlineInputBorder(),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                      color: Colors.blue,
                                      width: 2,
                                    )),
                                  ),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                TextFormField(
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Enter Password";
                                    }
                                    if (value.length < 6) {
                                      return "Minimu 6 Characters required";
                                    }
                                    return null;
                                  },
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.vpn_key_rounded),
                                    hintText: 'Password',
                                    focusColor: Colors.blue[700],
                                    contentPadding:
                                        EdgeInsets.only(left: 20, right: 20),
                                    border: OutlineInputBorder(),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                      color: Colors.blue,
                                      width: 2,
                                    )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(fontSize: 12, color: Colors.blue),
                          )),
                      Row(
                        children: [
                          Expanded(
                            child: FlatButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return showAlertDialogue();
                                      });
                                }
                              },
                              child: Text(
                                'Login',
                                style: TextStyle(
                                    fontWeight: (FontWeight.bold),
                                    color: Colors.white),
                              ),
                              color: Colors.blue[300],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
