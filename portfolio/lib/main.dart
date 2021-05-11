import 'package:flutter/material.dart';

import 'screens/visit_card_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    precacheImage(AssetImage('assets/00.bmp'), context);
    precacheImage(AssetImage('assets/04.bmp'), context);
    precacheImage(AssetImage('assets/13.bmp'), context);
    precacheImage(AssetImage('assets/christ.jpg'), context);
    return MaterialApp(
      title: 'Ma carte de visite',
      home: VisitCard(),
    );
  }
}
