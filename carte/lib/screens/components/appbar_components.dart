import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import '../../ressources/const_globals.dart';

class SliverAppbarComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      backgroundColor: Color(colorBackground),
      expandedHeight: 145.0,
      flexibleSpace: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            fit: FlexFit.loose,
            child: Container(
              //margin: EdgeInsets.all(10),
              alignment: Alignment.centerLeft,
              child: Text(
                "Christian, Entrepreneur",
                style: GoogleFonts.oxanium(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
          Flexible(
            flex: 2,
            fit: FlexFit.loose,
            child: Image.asset("assets/christ.jpg"),
          )
        ],
      ),
    );
  }
}
