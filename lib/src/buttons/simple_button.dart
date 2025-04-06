import 'package:auraa_ui/enums/button_border_radius.dart';
import 'package:flutter/material.dart';

/// A customizable simple button widget for Flutter.
///
/// This widget allows customization of button width, background color,
/// border radius, item gap, text style, and onPressed callback.
///
/// To use this widget, simply instantiate it and provide the desired parameters.
///
/// Example:
/// ```dart
/// AuiSimpleButton(
///   borderRadius: ButtonRadiusType.small,
///   backgroundColor: Colors.blue,
///   itemGap: 15,
///   textStyle: TextStyle(color: Colors.white),
///   onPressed: () {
///     print('Button pressed!');
///   },
/// )
/// ```
///
/// The `borderRadius` parameter specifies the corner radius of the button.
/// It accepts values from the [ButtonRadiusType] enum: `none`, `small`, `medium`,
/// `large`, and `extraLarge`. If no value is provided, the default radius is `0`.
///
/// The `backgroundColor` parameter sets the background color of the button.
/// The default color is `Colors.black87`.
///
/// The `itemGap` parameter specifies the space between the icon and text inside the button.
/// The default value is `10`.
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
///
class AuiSimpleButton extends StatelessWidget {
  //final double borderRadius;
  final double itemGap;
  final double buttonWidth;
  final ButtonRadiusType? borderRadius;
  final Color backgroundColor;
  final TextStyle? textStyle;
  final void Function()? onPressed;

  // Corrected constructor
  const AuiSimpleButton({
    Key? key,
    this.borderRadius,
    this.backgroundColor = Colors.black87,
    this.itemGap = 10,
    this.textStyle,
    this.buttonWidth = 500,
    this.onPressed,
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Hello",
                    style: textStyle ??
                        const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Colors.white70),
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
