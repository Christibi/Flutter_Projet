import 'package:flutter/material.dart';
import 'package:portfolio/screens/components/drawers_component.dart';

import 'package:fab_circular_menu/fab_circular_menu.dart'; //menu circulaire

import 'package:font_awesome_flutter/font_awesome_flutter.dart'; //icon font awesome

//import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

import '../ressources/const_globals.dart';

import 'components/appbar_components.dart';

class VisitCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: DrawerComponent(),
      body: _buildBodyy(context),
      floatingActionButton: FabCircularMenu(
          fabOpenIcon: Icon(
            FontAwesomeIcons.handshake,
            color: Colors.blue,
            size: 32.0,
          ),
          fabColor: Colors.white70,
          ringDiameter: 210.0,
          ringWidth: 56.0,
          ringColor: Colors.white,
          fabOpenColor: Colors.white,
          children: [
            IconButton(
              icon: Icon(
                FontAwesomeIcons.linkedinIn,
                color: Colors.blueGrey,
              ),
              onPressed: () => _launchUrl('http://www.youtube.com'),
            ),
            IconButton(
              icon: Icon(
                Icons.web,
                color: Colors.blueAccent,
              ),
              onPressed: () => _launchUrl('http://siteweb.com'),
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.envelope,
                color: Colors.blueAccent,
              ),
              onPressed: () => _launchUrl('mailto:segbec94@gmail.com'),
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.facebookF,
                color: Colors.blueAccent,
              ),
              onPressed: () => _launchUrl('http://www.facebook.com'),
            )
          ]),
    );
  }

  void _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Erreur';
    }
  }

  Widget _buildBodyy(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppbarComponent(),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Card(
                color: Colors.blue[900],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    statutCarteDeVisite,
                    textAlign: TextAlign.center,
                    style: styleEnSavoirPlus,
                  ),
                ),
              ),
              Card(
                color: Colors.blue[900],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    statutEnSavoirPlus,
                    style: styleEnSavoirPlus,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
