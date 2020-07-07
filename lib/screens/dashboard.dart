import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:toast/toast.dart';

import '../consts_global.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dashboard",
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
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return ListView(
      padding: EdgeInsets.only(left: space, right: space, bottom: 20.0),
      shrinkWrap: true,
      children: [
        SizedBox(
          height: 15.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              "   Name",
              style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
              )),
            ),
            Text(
              "Exchanges",
              style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
              )),
            ),
            Text(
              "Copy   ",
              style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
              )),
            ),
          ],
        ),
        SizedBox(
          height: 15.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Colors.grey[900],
              radius: sizeCircleAvatarRaduis,
              child: Text(
                "ETH",
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: sizeName,
                )),
              ),
            ),
            Text(
              "Altilly",
              style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                color: Colors.white,
                fontSize: sizeExchange,
              )),
            ),
            IconButton(
                tooltip: messageTooltip,
                icon: Icon(
                  Icons.content_copy,
                  color: Colors.orange,
                ),
                onPressed: () {
                  Clipboard.setData(ClipboardData(text: ethAltilly));
                  Toast.show("Good copy", context,
                      duration: Toast.LENGTH_SHORT,
                      gravity: Toast.BOTTOM,
                      backgroundColor: Colors.orange);
                  print("super");
                })
          ],
        ),
        SizedBox(
          height: 15.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Colors.grey[900],
              radius: sizeCircleAvatarRaduis,
              child: Text(
                "BTC",
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                  color: Colors.orange,
                  fontSize: sizeName,
                )),
              ),
            ),
            Text(
              "Altilly",
              style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                color: Colors.white,
                fontSize: sizeExchange,
              )),
            ),
            IconButton(
                tooltip: messageTooltip,
                icon: Icon(
                  Icons.content_copy,
                  color: Colors.orange,
                ),
                onPressed: () {
                  Clipboard.setData(ClipboardData(text: btcAltilly));
                  Toast.show("Good copy", context,
                      duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
                })
          ],
        ),
        SizedBox(
          height: 15.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Colors.grey[900],
              radius: sizeCircleAvatarRaduis,
              child: Text(
                "LUNES",
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                  color: Colors.green,
                  fontSize: 13.0,
                )),
              ),
            ),
            Text(
              "Altilly",
              style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                color: Colors.white,
                fontSize: sizeExchange,
              )),
            ),
            IconButton(
                tooltip: messageTooltip,
                icon: Icon(
                  Icons.content_copy,
                  color: Colors.orange,
                ),
                onPressed: () {
                  Clipboard.setData(ClipboardData(text: lunesAltilly));
                  Toast.show("Good copy", context,
                      duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
                })
          ],
        ),
        SizedBox(
          height: 15.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Colors.grey[900],
              radius: sizeCircleAvatarRaduis,
              child: Text(
                "LUNES",
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                  color: Colors.green,
                  fontSize: 13.0,
                )),
              ),
            ),
            Text(
              "Lunes",
              style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                color: Colors.white,
                fontSize: sizeExchange,
              )),
            ),
            IconButton(
                tooltip: messageTooltip,
                icon: Icon(
                  Icons.content_copy,
                  color: Colors.orange,
                ),
                onPressed: () {
                  Clipboard.setData(ClipboardData(text: lunesLunes));
                  Toast.show("Good copy", context,
                      duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
                })
          ],
        ),
        SizedBox(
          height: 15.0,
        ),
      ],
    );
  }
}
