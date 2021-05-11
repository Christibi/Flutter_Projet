import 'package:flutter/material.dart';
import 'package:flutter_multi_carousel/carousel.dart';

import 'drawers_component.dart';

class PortfolioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: DrawerComponent(),
      body: Carousel(
        height: 500.0,
        width: 500.0,
        type: Types.slideSwiper,
        children: [
          Image.asset('assets/christ.jpg'),
          Image.asset('assets/christ.jpg'),
          Image.asset('assets/christ.jpg'),
        ],
        initialPage: 0,
        axis: Axis.horizontal,
        onCarouselTap: (i) {},
        arrowColor: Colors.black,
        showArrow: true,
        indicatorType: IndicatorTypes.bubble,
      ),
    );
  }
}
