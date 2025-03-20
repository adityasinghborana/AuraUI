import 'package:auraa_ui/aura_ui.dart';
import 'package:flutter/material.dart';

import 'layout/custom_Scaffold.dart';

class SparkleTextPage extends StatelessWidget {
  const SparkleTextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        name: "Tappable Caraousal",
        body: Center(
          child: SparklesText(
              sparkleScale: 2.0,
              child: Text(
                "Cool Text Effect ",
                style: TextStyle(fontSize: 96, color: Colors.white),
              )),
        ));
  }
}
