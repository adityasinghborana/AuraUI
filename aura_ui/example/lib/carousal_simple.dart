import 'package:auraa_ui/aura_ui.dart';
import 'package:example/layout/my_app_bar.dart';
import 'package:example/layout/mydrawer.dart';
import 'package:flutter/material.dart';

import 'layout/custom_Scaffold.dart';

class SimpleCarousal extends StatelessWidget {
  const SimpleCarousal({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();
    final PageController pageController2 = PageController();
    return CustomScaffold(
      name: "Simple Caraousal",
      body: Column(
        children: [
          Expanded(
              child: AuraUICarousel(
                  maxWidth: MediaQuery.of(context).size.width,
                  images: ["asset/1.png", "asset/2.png", "asset/3.png"],
                  pageController: pageController)),
          Expanded(
              child: AuraUICarousel(
                  indicatorType: CarouselIndicatorType.line,
                  maxWidth: MediaQuery.of(context).size.width,
                  images: ["asset/1.png", "asset/2.png", "asset/3.png"],
                  pageController: pageController2)),
        ],
      ),
    );
  }
}
