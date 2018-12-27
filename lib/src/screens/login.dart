import 'package:flutter/material.dart';

enum Options { help }

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 40.0, bottom: 15.0, left: 10.0, right: 10.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 8,
                  child: Text(
                    'Verify your phone number',
                    style: TextStyle(
                      fontWeight: FontWeight.bold, 
                      fontSize: 18.0,
                      color: Colors.grey
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: PopupMenuButton<Options>(
                    itemBuilder: (BuildContext context) => <PopupMenuEntry<Options>>[
                      const PopupMenuItem<Options>(
                        value: Options.help,
                        child: Text('Help'),
                      )
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
              child: Text(
                'WhatsApp will send an SMS message (carrier charges may apply) '
                'to verify your phone number. Enter your country code and phone number:',
                textAlign: TextAlign.center,
              ),
            ),
            CountryOptions(),
            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Color.fromRGBO(101, 207, 114, 1.0),
                  onPressed: () { },
                  child: Text("NEXT"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CountryOptionsState extends State<CountryOptions> {
  final List<String> countries = ['Indonesia', 'Malaysia', 'Singapura'];
  String _country;

  void _changeCountry(String country) {
    setState(() {
      _country = country;    
    });
  }

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.7,
      child: DropdownButton(
        value: _country == '' ? null : _country,
        hint: Text('Select'),
        isExpanded: true,
        items: countries.map((String country) {
          return DropdownMenuItem(
            child: Text(country),
            value: country,
          );
        }).toList(),
        onChanged: _changeCountry,
      ),
    );
  }
}

class CountryOptions extends StatefulWidget {
  @override
  CountryOptionsState createState() => new CountryOptionsState();
}
