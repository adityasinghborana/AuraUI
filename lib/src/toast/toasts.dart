import 'package:flutter/material.dart';

/// Displays a simple toast message using a [SnackBar].
///
/// The message appears as a floating snackbar with a custom background color and text color.
///
/// - [text] : The message to display.
/// - [textColour] : The color of the text.
/// - [color] : The background color of the snackbar.
/// - [context] : The [BuildContext] to show the snackbar.
void simpleToastMessage(
    {required String text,
    required Color textColour,
    required Color color,
    required BuildContext context}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 0,
      shape: OutlineInputBorder(borderSide: BorderSide(color: color)),
      width: 300,
      behavior: SnackBarBehavior.floating,
      duration: const Duration(milliseconds: 1200),
      content: Text(
        text,
        style: TextStyle(color: textColour),
      ),
      backgroundColor: color,
    ),
  );
}


/// Displays a toast message with a light background effect.
///
/// The message appears with a slightly transparent background.
///
/// - [text] : The message to display.
/// - [color] : The border and background color.
/// - [textColour] : The color of the text.
/// - [context] : The [BuildContext] to show the snackbar.
void lightBackgroundToastMessage(
    {required String text,
    required Color color,
    required Color textColour,
    required BuildContext context}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    clipBehavior: Clip.antiAliasWithSaveLayer,
    elevation: 0,
    shape: OutlineInputBorder(borderSide: BorderSide(color: color)),
    width: 300,
    behavior: SnackBarBehavior.floating,
    duration: const Duration(milliseconds: 1200),
    content: Text(
      text,
      style: TextStyle(color: textColour),
    ),
    backgroundColor: color.withAlpha(36),
  ));
}

/// Displays a toast message with an icon.
///
/// The message appears as a floating snackbar with an icon at the start.
///
/// - [text] : The message to display.
/// - [icon] : The [IconData] to display in the message.
/// - [iconColor] : The color of the icon.
/// - [color] : The background color.
/// - [textColour] : The color of the text.
/// - [context] : The [BuildContext] to show the snackbar.
void iconMessage(
    {required String text,
    required IconData icon,
    required Color iconColor,
    required Color color,
    required Color textColour,
    required BuildContext context}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    clipBehavior: Clip.antiAliasWithSaveLayer,
    elevation: .5,
    shape: const OutlineInputBorder(borderSide: BorderSide.none),
    width: 300,
    behavior: SnackBarBehavior.floating,
    duration: const Duration(milliseconds: 1200),
    content: Row(
      children: [
        Container(
          height: 32,
          width: 32,
          color: color.withAlpha(36),
          child: Icon(icon, size: 20, color: iconColor),
        ),
        const SizedBox(width: 12),
        Text(
          text,
          style: TextStyle(color: textColour),
        ),
      ],
    ),
    backgroundColor: color,
  ));
}
