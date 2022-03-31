import 'dart:ui';
import 'package:flutter/material.dart';

class Loginscreen extends StatelessWidget {
  static const routeName = '/Login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.red[200],
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 55,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  MaterialButton(
                    minWidth: double.infinity,
                    color: Colors.blueGrey,
                    height: 60,
                    onPressed: () {},
                    // defining the shape
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      "Login through face",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  // SizedBox(height: 10.0),
                  Container(
                      height: 40.0,
                      child: Align(
                        alignment: Alignment.center,
                        // ignore: deprecated_member_use
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(20.0)),
                          color: Color(0xffffffff),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Center(
                                child: Image(
                                    image:
                                        AssetImage('assets/google-logo.jpg')),
                              ),
                              SizedBox(width: 4.0),
                              Text(
                                '\t\t\t\t\t\t\t\t\t\t\tContinue with google',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18.0),
                              ),
                            ],
                          ),
                          // onPressed: () => _signIn(context)
                          //     .then((User user) => print(user))
                          //     .catchError((e) => print(e)),
                        ),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
