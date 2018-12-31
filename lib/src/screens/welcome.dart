import 'package:flutter/material.dart';
import 'dart:ui';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 40.0, bottom: 10.0, left: 10.0, right: 10.0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                child: Text(
                  'Welcome to WhatsApp',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                child: Image.asset(
                  'assets/ill_eula.png',
                  scale: 2.5,
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RichText(
                      textAlign: TextAlign.center,
                      softWrap: true,
                      text: TextSpan(
                        style: TextStyle(fontSize: 12),
                        children: <TextSpan>[
                          TextSpan(text: 'Read our ', style: TextStyle(color: Colors.black)),
                          TextSpan(text: 'Privacy Policy. ', style: TextStyle(color: Colors.blue)),
                          TextSpan(text: 'Tap "Agree and continue" to accept the ', style: TextStyle(color: Colors.black)),
                          TextSpan(text: 'Term of Service.', style: TextStyle(color: Colors.blue)),
                        ]
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.0),
                      child: RaisedButton(
                        textColor: Colors.white,
                        color: Color.fromRGBO(101, 207, 114, 1.0),
                        onPressed: () {},
                        child: new Text("AGREE AND CONTINUE"),
                      ),
                    )
                  ],
                )
              )
            ],
          ),
        )
      )
    );
  }
}
