import 'package:example/layout/my_app_bar.dart';
import 'package:example/layout/mydrawer.dart';
import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  final Widget body;
  final String name;
  const CustomScaffold({super.key, required this.body, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: MyAppBar(name: name),
      drawer: MyDrawer(),
      body: body,
    );
  }
}
