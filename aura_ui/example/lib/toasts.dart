import 'package:auraa_ui/aura_ui.dart';
import 'package:flutter/material.dart';
import 'layout/custom_scaffold.dart';

class ToastPage extends StatefulWidget {
  const ToastPage({super.key});

  @override
  State<ToastPage> createState() => _ToastPageState();
}

class _ToastPageState extends State<ToastPage> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      name: "Toasts",
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
                        elevatedBtn("Simple Toast", Colors.red, context,
                            onPressed: () {
                          simpleToastMessage(
                              text: "this is Simple Toast",
                              context: context,
                              color: Colors.green,
                              textColour: Colors.white);
                        }),
                        elevatedRoundedBtn(
                            "Toast With Icon", Colors.red, context,
                            onPressed: () {
                          iconMessage(
                            text: "Toast With Icon",
                            context: context,
                            color: Colors.green,
                            textColour: Colors.white,
                            icon: Icons.ice_skating_outlined,
                            iconColor: Colors.white,
                          );
                        }),
                        buildFlatButton("Light Bg Toast", Colors.red, context,
                            onPressed: () {
                          // display the toast
                          lightBackgroundToastMessage(
                              text: "this is light bg",
                              context: context,
                              color: Colors.green,
                              textColour: Colors.white);
                        }),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget elevatedBtn(String btnName, Color color, BuildContext context,
      {required VoidCallback? onPressed}) {
    return AuiButton(
      onPressed: onPressed,
      elevation: 2,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      backgroundColor: color,
      child: Text(
        btnName,
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget elevatedRoundedBtn(String btnName, Color color, BuildContext context,
      {required VoidCallback? onPressed}) {
    return AuiButton(
      onPressed: onPressed,
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

  Widget buildFlatButton(String btnName, Color color, BuildContext context,
      {required VoidCallback? onPressed}) {
    return AuiButton(
      onPressed: onPressed,
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
