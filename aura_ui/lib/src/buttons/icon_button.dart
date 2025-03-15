import 'package:auraa_ui/enums/button_border_radius.dart';
import 'package:flutter/material.dart';

/// A customizable icon button widget for Flutter.
///
/// This widget combines a text button with an icon.
/// It allows customization of button width, background color, border radius,
/// item gap, icon properties (icon data, size, weight, color), text style, and onPressed callback.
///
/// To use this widget, simply instantiate it and provide the desired parameters.
///
/// Example:
/// ```dart
/// AuiIconButton(
///           borderRadius: ButtonRadiusType.medium,
///          backgroundColor: Colors.blue,
///           itemGap: 15,
///           icon: Icons.star,
///           iconSize: 40,
///           iconWeight: 3,
///           iconColor: Colors.yellow,
///           textStyle: TextStyle(color: Colors.white),
///           onPressed: () {
///             print('Icon button pressed!');
///           },
///         ),
/// ```
///
/// The `borderRadius` parameter specifies the corner radius of the button.
/// It accepts values from the [ButtonRadiusType] enum: `none`, `small`, `medium`,
/// `large`, and `extraLarge`. If no value is provided, the default radius is `0`.
///
/// The `backgroundColor` parameter sets the background color of the button.
/// The default color is `Colors.yellow`.
///
/// The `itemGap` parameter specifies the space between the icon and text inside the button.
/// The default value is `10`.
///
/// The `icon` parameter sets the icon data to be displayed in the button.
/// The default icon is `Icons.send_rounded`.
///
/// The `iconSize` parameter sets the size of the icon.
/// The default size is `30`.
///
/// The `iconWeight` parameter sets the weight of the icon.
/// The default weight is `5`.
///
/// The `iconColor` parameter sets the color of the icon.
/// The default color is `Colors.deepPurple`.
///
/// The `textStyle` parameter allows custom styling for the button text.
/// If no value is provided, a default text style will be used.
///
/// The `onPressed` callback is triggered when the button is pressed.
/// If no callback is provided, the button will be disabled.
///
/// See also:
///
/// - [ButtonRadiusType], an enum defining different border radius types.
/// - [TextButton], a Flutter widget for displaying a text button.
/// - [Icon], a Flutter widget for displaying an icon.
///

class AuiIconButton extends StatelessWidget {
  //final double borderRadius;
  /// The gap between each item in a layout or container.
  final double itemGap;

  /// The width of the button.
  final double buttonWidth;

  /// The border radius of the button, customizable with the [ButtonRadiusType] enum.
  final ButtonRadiusType? borderRadius;

  /// The width of the icon, if specified. Allows for flexible icon sizing within the button.
  final double? iconWidth;

  /// The background color of the button.
  final Color backgroundColor;

  /// The icon displayed within the button.
  final IconData icon;

  /// The size of the icon within the button.
  final double iconSize;

  /// The weight or thickness of the icon, affecting its visual boldness.
  final double iconWeight;

  /// The color of the icon, if specified. Defaults to a standard color if left null.
  final Color? iconColor;

  /// The text style for any text displayed within the button.
  /// This allows customization of font size, weight, color, and more.
  final TextStyle? textStyle;

  /// The callback function triggered when the button is pressed.
  /// If left null, the button will not respond to user interaction.
  final void Function()? onPressed;

  // Corrected constructor
  const AuiIconButton({
    Key? key,
    this.borderRadius,
    this.iconColor = Colors.deepPurple,
    this.backgroundColor = Colors.yellow,
    this.itemGap = 10,
    this.textStyle,
    this.iconWeight = 5,
    this.iconSize = 30,
    this.icon = Icons.send_rounded,
    this.buttonWidth = 500,
    this.onPressed,
    this.iconWidth,
  }) : super(key: key);

  double getRadius() {
    switch (borderRadius) {
      case ButtonRadiusType.none:
        return 0;
      case ButtonRadiusType.small:
        return 8;
      case ButtonRadiusType.medium:
        return 12;
      case ButtonRadiusType.large:
        return 16;
      case ButtonRadiusType.extraLarge:
        return 24;
      default:
        return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonWidth,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: TextButton(
          onPressed: onPressed,
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(backgroundColor),
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(getRadius()),
              ),
            ),
          ),
          child: FittedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  size: iconSize,
                  weight: iconWeight,
                  color: iconColor,
                ),
                SizedBox(width: itemGap),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Hello",
                    style: textStyle ??
                        const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Colors.deepPurple),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
