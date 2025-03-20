import 'package:example/carousal_simple.dart';
import 'package:example/sparkle_text.dart';
import 'package:example/tappable_carousal.dart';
import 'package:example/toasts.dart';
import 'package:example/example.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 250,
      backgroundColor: Colors.black87,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.grey.shade900),
            child: SizedBox(
              width: 100, // Increase width to give space
              child: Image.asset(
                "asset/Logo.png", // Ensure correct path
                height: 10,
                fit: BoxFit.contain, // Ensures the image scales properly
              ),
            ),
          ),
          CustomListTile(
            icon: Icons.smart_button,
            title: "Buttons",
            destination: ButtonsPage(),
          ),
          CustomListTile(
            icon: Icons.touch_app_sharp,
            title: "Toasts",
            destination: ToastPage(),
          ),
          CustomListTile(
            icon: Icons.slideshow,
            title: "Simple Carousal",
            destination: SimpleCarousal(),
          ),
          CustomListTile(
            icon: Icons.preview,
            title: "Tappable Carousal",
            destination: TappableCarousal(),
          ),
          CustomListTile(
            icon: Icons.animation,
            title: "Sparkle Text",
            destination: SparkleTextPage(),
          ),
        ],
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final Widget destination;

  const CustomListTile({
    super.key,
    required this.icon,
    required this.title,
    required this.destination,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.white,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destination),
        );
      },
    );
  }
}
