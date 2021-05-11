import 'package:flutter/material.dart';

import 'package:portfolio/ressources/const_globals.dart';
import '../ressources/const_globals.dart';

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(colorBackground),
      appBar: AppBar(
        title: Text(titreEnSavoirPlus),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 70.0,
                backgroundImage: AssetImage('assets/christ.jpg'),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Card(
              color: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(statutEnSavoirPlus,
                    textAlign: TextAlign.center, style: styleEnSavoirPlus),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                iconMail,
                SizedBox(
                  width: 15.0,
                ),
                Text(
                  textMail,
                  style: styleMail,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                iconMail2,
                SizedBox(
                  width: 15.0,
                ),
                Text(
                  textMail2,
                  style: styleMail2,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
