import 'package:auraa_ui/aura_ui.dart';
import 'package:flutter/material.dart';

import 'layout/custom_scaffold.dart';

class Dialogs extends StatelessWidget {
  const Dialogs({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Center(
        child: AuiButton(
          onPressed: () => AuiDialog.static(
              context: context,
              title: "Confirmation",
              content: Text("Are you sure you want to delete"),
              actions: [
                AuiButton.text(
                  onPressed: () {},
                  backgroundColor: Colors.red,
                  child: Text(
                    "cancel",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                AuiButton(
                  borderRadiusAll: 0,
                  onPressed: () {},
                  backgroundColor: Colors.green,
                  child: Text(
                    "confirm",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ]),
          elevation: 0,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          backgroundColor: Colors.white,
          child: Text("Static dialog",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.green,
              )),
        ),
      ),
      name: 'Dialog Screen',
    );
  }
}
