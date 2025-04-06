import 'package:auraa_ui/aura_ui.dart';
import 'package:flutter/material.dart';

class ButtonsPage extends StatefulWidget {
  const ButtonsPage({super.key});

  @override
  State<ButtonsPage> createState() => _ButtonsPageState();
}

class _ButtonsPageState extends State<ButtonsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Wrap(
                      spacing: 8.0, // Horizontal spacing between buttons
                      runSpacing: 8.0, // Vertical spacing between wrapped rows
                      alignment: WrapAlignment.center,
                      children: [
                        elevatedBtn(
                          "Elevated Button",
                          Colors.red,
                          context,
                        ),
                        elevatedRoundedBtn(
                          "Elevated Rounded Button",
                          Colors.red,
                          context,
                        ),
                        buildFlatButton(
                          "Flat Button",
                          Colors.red,
                          context,
                        ),
                        roundedBtn("Rounded Button", Colors.red),
                        outLinedBtn("Outline Button", Colors.red),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Wrap(
                      spacing: 8.0, // Horizontal spacing between buttons
                      runSpacing: 8.0, // Vertical spacing between wrapped rows
                      alignment: WrapAlignment.center,
                      children: [
                        outlinedRoundedBtn(
                            "Outline Rounded Button", Colors.red),
                        softBtn("Soft Button", Colors.red),
                        softRoundedBtn("Soft Rounded Button", Colors.red),
                        textBtn("Text Button", Colors.red),
                        textRoundedBtn("Text Rounded Button", Colors.red),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget elevatedBtn(
    String btnName,
    Color color,
    BuildContext context,
  ) {
    return AuiButton(
      onPressed: () {},
      elevation: 2,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      backgroundColor: color,
      child: Text(
        btnName,
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget elevatedRoundedBtn(
    String btnName,
    Color color,
    BuildContext context,
  ) {
    return AuiButton(
      onPressed: () {},
      elevation: 2,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      backgroundColor: color,
      borderRadiusAll: 20,
      child: Text(
        btnName,
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget buildFlatButton(
    String btnName,
    Color color,
    BuildContext context,
  ) {
    return AuiButton(
      onPressed: () {},
      elevation: 0,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      backgroundColor: color,
      child: Text(
        btnName,
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget roundedBtn(String btnName, Color color) {
    return AuiButton(
      onPressed: () {},
      elevation: 0,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      backgroundColor: color,
      borderRadiusAll: 20,
      child: Text(
        btnName,
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget outLinedBtn(String btnName, Color color) {
    return AuiButton.outlined(
      onPressed: () {},
      elevation: 0,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      borderColor: color,
      splashColor: color.withValues(alpha: 0.1),
      child: Text(
        btnName,
        style: TextStyle(color: color),
      ),
    );
  }

  Widget outlinedRoundedBtn(String btnName, Color color) {
    return AuiButton.outlined(
      onPressed: () {},
      elevation: 0,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      borderColor: color,
      splashColor: color.withValues(alpha: 0.1),
      borderRadiusAll: 20,
      child: Text(
        btnName,
        style: TextStyle(color: color),
      ),
    );
  }

  Widget softBtn(String btnName, Color color) {
    return AuiButton(
      onPressed: () {},
      elevation: 0,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      borderColor: color,
      backgroundColor: color.withValues(alpha: 0.12),
      splashColor: color.withValues(alpha: 0.2),
      child: Text(
        btnName,
        style: TextStyle(color: color),
      ),
    );
  }

  Widget softRoundedBtn(String btnName, Color color) {
    return AuiButton(
      onPressed: () {},
      elevation: 0,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      borderColor: color,
      backgroundColor: color.withValues(alpha: 0.12),
      splashColor: color.withValues(alpha: 0.2),
      borderRadiusAll: 20,
      child: Text(
        btnName,
        style: TextStyle(color: color),
      ),
    );
  }

  Widget textBtn(String btnName, Color color) {
    return AuiButton.text(
      onPressed: () {},
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      splashColor: color.withValues(alpha: 0.1),
      child: Text(
        btnName,
        style: TextStyle(color: color),
      ),
    );
  }

  Widget textRoundedBtn(String btnName, Color color) {
    return AuiButton.text(
      onPressed: () {},
      elevation: 0,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      splashColor: color.withValues(alpha: 0.1),
      borderRadiusAll: 20,
      child: Text(
        btnName,
        style: TextStyle(color: color),
      ),
    );
  }
}
