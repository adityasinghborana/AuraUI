import 'package:example/Toasts.dart';
import 'package:example/example.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black87,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              decoration: BoxDecoration(color: Colors.grey.shade900),
              child: Image.asset("asset/Logo.png")),
          CustomListTile(
            icon: Icons.smart_button,
            title: "Buttons",
            destination: ButtonsPage(),
          ),
          CustomListTile(
            icon: Icons.notification_important_outlined,
            title: "Toasts",
            destination: ToastPage(),
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
    Key? key,
    required this.icon,
    required this.title,
    required this.destination,
  }) : super(key: key);

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
