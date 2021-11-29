import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
          )),
        ),
        elevation: 0.0,
        centerTitle: true,
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
        )),
        child: Center(
          child: Container(
            width: 350,
            height: 350,
            child: Card(
              elevation: 5.0,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Image.asset("assets/images/windows1.png",height: 80,width: 80,),
                              SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  prefixIcon : Icon(Icons.person),
                                  hintText: 'Username',
                                  focusColor: Colors.blue[700],
                               contentPadding: EdgeInsets.only(left: 20,right: 20),
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
                                obscureText: true,
                                decoration: InputDecoration(
                                  prefixIcon :Icon(Icons.vpn_key_rounded),
                                  
                                  hintText: 'Password',
                                  focusColor: Colors.blue[700],
                                  contentPadding: EdgeInsets.only(left: 20,right: 20),
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
                      Row(
                        children: [
                          Expanded(
                            child: FlatButton(
                              onPressed: () {},
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
