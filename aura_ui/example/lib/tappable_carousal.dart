import 'package:auraa_ui/aura_ui.dart';
import 'package:example/layout/my_app_bar.dart';
import 'package:example/layout/mydrawer.dart';
import 'package:flutter/material.dart';

import 'layout/custom_Scaffold.dart';

class TappableCarousal extends StatelessWidget {
  const TappableCarousal({super.key});

  @override
  Widget build(BuildContext context) {
    List<CarouselItem> items = [
      CarouselItem(
          imageUrl: "asset/1.png",
          onTap: () {
            simpleToastMessage(
                text: "Slide 1 is tapped",
                textColour: Colors.white,
                color: Colors.green,
                context: context);
          }),
      CarouselItem(
          imageUrl: "asset/2.png",
          onTap: () {
            simpleToastMessage(
                text: "Slide 2 is tapped",
                textColour: Colors.white,
                color: Colors.green,
                context: context);
          }),
      CarouselItem(
          imageUrl: "asset/3.png",
          onTap: () {
            simpleToastMessage(
                text: "Slide 3 is tapped",
                textColour: Colors.white,
                color: Colors.green,
                context: context);
          })
    ];

    final PageController pageController = PageController();
    final PageController pageController2 = PageController();
    return CustomScaffold(
      name: "Tappable Caraousal",
      body: Column(
        children: [
          Expanded(
              child: AuraUICarouselTappable(
            maxWidth: MediaQuery.of(context).size.width,
            pageController: pageController,
            items: items,
          )),
          Expanded(
              child: AuraUICarouselTappable(
            swipeDuration: Duration(seconds: 2),
            duration: Duration(seconds: 8),
            indicatorType: CarouselIndicatorType.line,
            maxWidth: MediaQuery.of(context).size.width,
            pageController: pageController2,
            items: items,
          ))
        ],
      ),
    );
  }
}
