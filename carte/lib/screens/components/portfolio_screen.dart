import 'package:flutter/material.dart';
import 'package:flutter_multi_carousel/carousel.dart';

import 'drawers_component.dart';

class PortfolioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      backgroundColor: Colors.white,
      drawer: DrawerComponent(),
      body: Carousel(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        type: Types.slideSwiper,
        children: [
          Image.asset('assets/christ.jpg'),
          Image.asset('assets/christ.jpg'),
          Image.asset('assets/christ.jpg'),
        ],
        initialPage: 0,
        axis: Axis.horizontal,
        onCarouselTap: (i) {},
        arrowColor: Colors.blueGrey,
        showArrow: true,
        indicatorType: IndicatorTypes.bubble,
      ),
    );
  }
}
