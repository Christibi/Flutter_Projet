import 'package:flutter/material.dart';

import '../components/portfolio_screen.dart';

import '../visit_card_screen.dart';

import 'package:google_fonts/google_fonts.dart';

class DrawerComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            child: Container(
              alignment: Alignment.center,
              child: Text('Christian, Entrepreneur'),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  title: Text(
                    "Accueil",
                    style:
                        GoogleFonts.lato(textStyle: TextStyle(fontSize: 28.0)),
                  ),
                  onTap: () => Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => VisitCard())),
                ),
                ListTile(
                  title: Text(
                    "Portfolio",
                    style:
                        GoogleFonts.lato(textStyle: TextStyle(fontSize: 28.0)),
                  ),
                  onTap: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PortfolioScreen())),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
