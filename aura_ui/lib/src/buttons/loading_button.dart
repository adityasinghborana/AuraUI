import 'package:flutter/material.dart';

import '../../enums/button_border_radius.dart';

/// A customizable loading button widget for Flutter.
///
/// This widget combines a text button with a circular loading indicator.
/// It allows customization of button width, background color, border radius,
/// item gap, indicator stroke width, indicator color, text style, and onPressed callback.
///
/// To use this widget, simply instantiate it and provide the desired parameters.
///
/// Example:
/// ```dart
/// AuiLoadingButton(
///   borderRadius: ButtonRadiusType.medium,
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
/// The `itemGap` parameter specifies the space between the loading indicator and text inside the button.
/// The default value is `10`.
///
/// The `indicatorStrokeWidth` parameter sets the stroke width of the circular loading indicator.
/// The default value is `2`.
///
/// The `indicatorColor` parameter sets the color of the circular loading indicator.
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
/// - [CircularProgressIndicator], a Flutter widget for displaying a circular loading indicator.
///

class AuiLoadingButton extends StatelessWidget {
  final ButtonRadiusType? borderRadius;
  final double itemGap;
  final double buttonWidth;
  final double indicatorStrokeWidth;
  final Color backgroundColor;
  final Color indicatorColor;

  final TextStyle? textStyle;
  final void Function()? onPressed;

  // Corrected constructor
  const AuiLoadingButton({
    Key? key,
    this.borderRadius,
    this.indicatorColor = Colors.deepPurple,
    this.backgroundColor = Colors.black87,
    this.itemGap = 10,
    this.indicatorStrokeWidth = 2,
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
                SizedBox(
                  height: 16,
                  width: 16,
                  child: CircularProgressIndicator(
                      strokeWidth: indicatorStrokeWidth, color: indicatorColor),
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
