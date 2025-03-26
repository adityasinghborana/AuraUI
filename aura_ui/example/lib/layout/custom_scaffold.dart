import 'package:example/layout/my_app_bar.dart';
import 'package:example/layout/mydrawer.dart';
import 'package:flutter/material.dart';

class CustomScaffold extends StatefulWidget {
  final Widget body;
  final String name;
  const CustomScaffold({super.key, required this.body, required this.name});

  @override
  State<CustomScaffold> createState() => _CustomScaffoldState();
}

class _CustomScaffoldState extends State<CustomScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: MyAppBar(name: widget.name),
      drawer: MyDrawer(),
      body: widget.body,
    );
  }
}
