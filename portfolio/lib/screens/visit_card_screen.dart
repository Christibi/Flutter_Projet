import 'package:flutter/material.dart';
import 'package:portfolio/screens/components/drawers_component.dart';

import 'detail.dart';

import '../ressources/const_globals.dart';

import 'components/appbar_components.dart';

import 'components/appbar_components.dart';

class VisitCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: DrawerComponent(),
      body: _buildBodyy(context),
    );
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
                //margin: EdgeInsets.only(top: 30.0, bottom: 15.0),
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
