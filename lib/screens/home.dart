import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'dashboard.dart';
import '../consts_global.dart';

class Home extends StatelessWidget {
  // String quote = "le text a été copier";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Crypto address",
          style: GoogleFonts.montserrat(
              textStyle: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
          )),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      backgroundColor: Color(0xff052555),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage(
                "assets/btc.png",
              ),
              backgroundColor: Colors.transparent,
              radius: 70.0,
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              name,
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontStyle: FontStyle.normal),
              ),
            ),
            SizedBox(
              height: 18.0,
            ),
            RaisedButton(
              color: Colors.orange[700],
              child: Text(
                "Next >",
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                )),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return Dashboard();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
