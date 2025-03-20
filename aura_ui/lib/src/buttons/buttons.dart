import 'package:flutter/material.dart';

import '../../constants/my_constants.dart';

/// Enum defining different button types.
enum AuiButtonType { elevated, outlined, text }

/// A custom button widget supporting multiple styles and configurations.
///
/// This widget provides various predefined styles such as `elevated`, `outlined`, and `text` buttons.
/// It allows customization of padding, shape, background color, border, shadow, and more.
class AuiButton extends StatelessWidget {
  /// Defines the type of button (elevated, outlined, or text).
  final AuiButtonType? buttonType;

  /// Custom button style, if provided.
  final ButtonStyle? style;

  /// Callback function to be executed when the button is pressed.
  final VoidCallback? onPressed;

  /// Whether the button is disabled.
  final bool? disabled;

  /// Whether the button should take full width.
  final bool? block;

  /// If `true`, applies a soft color variation.
  final bool soft;

  /// Custom padding using WidgetStateProperty.
  final WidgetStateProperty<EdgeInsetsGeometry>? msPadding;

  /// Static padding for the button.
  final EdgeInsetsGeometry? padding;

  /// Custom elevation using WidgetStateProperty.
  final WidgetStateProperty<double>? msElevation;

  /// Static elevation for the button.
  final double? elevation;

  /// Custom shape using WidgetStateProperty.
  final WidgetStateProperty<EdgeInsetsGeometry>? msShape;

  /// Static shape of the button.
  final OutlinedBorder? shape;

  /// Custom border radius.
  final BorderRadiusGeometry? borderRadius;

  /// Border radius applied to all corners.
  final double? borderRadiusAll;

  /// Custom background color using WidgetStateProperty.
  final WidgetStateProperty<Color>? msBackgroundColor;

  /// Static background color for the button.
  final Color? backgroundColor;

  /// Custom border style using WidgetStateProperty.
  final WidgetStateProperty<BorderSide>? msSide;

  /// Static border style.
  final BorderSide? side;

  /// Border color of the button.
  final Color borderColor;

  /// Defines the tap target size for the button.
  final MaterialTapTargetSize? tapTargetSize;

  /// Custom shadow color using WidgetStateProperty.
  final WidgetStateProperty<Color>? msShadowColor;

  /// Static shadow color.
  final Color? shadowColor;

  /// Splash color when the button is pressed.
  final Color? splashColor;

  /// The child widget displayed inside the button.
  final Widget child;

  /// Default constructor with customization options.

  const AuiButton(
      {super.key,
      this.onPressed,
      required this.child,
      this.msPadding,
      this.padding,
      this.msShape,
      this.shape,
      this.borderRadius,
      this.borderRadiusAll = 0,
      this.msBackgroundColor,
      this.backgroundColor,
      this.buttonType = AuiButtonType.elevated,
      this.style,
      this.msShadowColor,
      this.msSide,
      this.side,
      this.borderColor = Colors.transparent,
      this.disabled = false,
      this.block = false,
      this.soft = false,
      this.msElevation,
      this.elevation = 4,
      this.shadowColor,
      this.tapTargetSize = MaterialTapTargetSize.padded,
      this.splashColor});

  const AuiButton.rounded(
      {super.key,
      required this.onPressed,
      required this.child,
      this.msPadding,
      this.padding,
      this.msShape,
      this.shape,
      this.borderRadius,
      this.borderRadiusAll,
      this.msBackgroundColor,
      this.backgroundColor,
      this.buttonType = AuiButtonType.elevated,
      this.style,
      this.block = false,
      this.msSide,
      this.disabled = false,
      this.side,
      this.soft = false,
      this.borderColor = Colors.transparent,
      this.msShadowColor,
      this.msElevation,
      this.elevation = 4,
      this.shadowColor,
      this.tapTargetSize = MaterialTapTargetSize.padded,
      this.splashColor});

  const AuiButton.small(
      {super.key,
      required this.onPressed,
      required this.child,
      this.msPadding,
      this.padding = const EdgeInsets.fromLTRB(8, 4, 8, 4),
      this.msShape,
      this.shape,
      this.borderRadius,
      this.borderRadiusAll,
      this.msBackgroundColor,
      this.backgroundColor,
      this.buttonType = AuiButtonType.elevated,
      this.style,
      this.block = false,
      this.msSide,
      this.soft = false,
      this.disabled = false,
      this.side,
      this.borderColor = Colors.transparent,
      this.msShadowColor,
      this.msElevation,
      this.elevation = 4,
      this.shadowColor,
      this.tapTargetSize = MaterialTapTargetSize.padded,
      this.splashColor});

  const AuiButton.medium(
      {super.key,
      required this.onPressed,
      required this.child,
      this.msPadding,
      this.padding = const EdgeInsets.fromLTRB(24, 16, 24, 16),
      this.msShape,
      this.block = false,
      this.shape,
      this.soft = false,
      this.borderRadius,
      this.borderRadiusAll,
      this.msBackgroundColor,
      this.backgroundColor,
      this.buttonType = AuiButtonType.elevated,
      this.style,
      this.msSide,
      this.disabled = false,
      this.side,
      this.borderColor = Colors.transparent,
      this.msShadowColor,
      this.msElevation,
      this.elevation = 4,
      this.shadowColor,
      this.tapTargetSize = MaterialTapTargetSize.padded,
      this.splashColor});

  const AuiButton.text(
      {super.key,
      required this.onPressed,
      required this.child,
      this.msPadding,
      this.padding = const EdgeInsets.all(0),
      this.msShape,
      this.block = false,
      this.shape,
      this.soft = false,
      this.borderRadius,
      this.borderRadiusAll,
      this.msBackgroundColor,
      this.backgroundColor,
      this.buttonType = AuiButtonType.text,
      this.style,
      this.msSide,
      this.disabled = false,
      this.side,
      this.borderColor = Colors.transparent,
      this.msShadowColor,
      this.msElevation,
      this.elevation = 4,
      this.shadowColor,
      this.tapTargetSize = MaterialTapTargetSize.padded,
      this.splashColor});

  const AuiButton.block(
      {super.key,
      required this.onPressed,
      required this.child,
      this.msPadding,
      this.padding = const EdgeInsets.fromLTRB(24, 16, 24, 16),
      this.msShape,
      this.block = true,
      this.shape,
      this.soft = false,
      this.borderRadius,
      this.borderRadiusAll,
      this.msBackgroundColor,
      this.backgroundColor,
      this.buttonType = AuiButtonType.elevated,
      this.style,
      this.msSide,
      this.disabled = false,
      this.side,
      this.borderColor = Colors.transparent,
      this.msShadowColor,
      this.msElevation,
      this.elevation = 4,
      this.shadowColor,
      this.tapTargetSize = MaterialTapTargetSize.padded,
      this.splashColor});

  const AuiButton.outlined(
      {super.key,
      required this.onPressed,
      required this.child,
      this.msPadding,
      this.padding = const EdgeInsets.fromLTRB(24, 16, 24, 16),
      this.msShape,
      this.soft = false,
      this.shape,
      this.borderRadius,
      this.borderRadiusAll,
      this.msBackgroundColor,
      this.backgroundColor,
      this.buttonType = AuiButtonType.outlined,
      this.style,
      this.msSide,
      this.block = false,
      this.side,
      this.disabled = false,
      this.borderColor = Colors.transparent,
      this.msShadowColor,
      this.msElevation,
      this.elevation = 4,
      this.shadowColor,
      this.tapTargetSize = MaterialTapTargetSize.padded,
      this.splashColor});

  const AuiButton.large(
      {super.key,
      required this.onPressed,
      required this.child,
      this.msPadding,
      this.padding = const EdgeInsets.fromLTRB(36, 20, 36, 20),
      this.msShape,
      this.shape,
      this.soft = false,
      this.borderRadius,
      this.borderRadiusAll,
      this.msBackgroundColor,
      this.backgroundColor,
      this.buttonType = AuiButtonType.elevated,
      this.style,
      this.disabled = false,
      this.msSide,
      this.side,
      this.block = false,
      this.borderColor = Colors.transparent,
      this.msShadowColor,
      this.msElevation,
      this.elevation = 4,
      this.shadowColor,
      this.tapTargetSize = MaterialTapTargetSize.padded,
      this.splashColor});

  @override
  Widget build(BuildContext context) {
    Widget button;
    Color bgColor = backgroundColor ?? Theme.of(context).colorScheme.primary;

    if (buttonType == AuiButtonType.outlined) {
      button = OutlinedButton(
        onPressed: onPressed,
        style: style ??
            ButtonStyle(
                tapTargetSize: tapTargetSize,
                side: msSide ??
                    WidgetStateProperty.all(side ??
                        BorderSide(
                          color:
                              soft ? borderColor.withAlpha(100) : borderColor,
                          width: soft ? 0.8 : 1,
                        )),
                overlayColor: WidgetStateProperty.all(
                    splashColor ?? (bgColor.withAlpha(40))),
                backgroundColor: soft
                    ? WidgetStateProperty.all(borderColor.withAlpha(40))
                    : null,
                foregroundColor:
                    WidgetStateProperty.all(borderColor.withAlpha(40)),
                shadowColor:
                    msShadowColor ?? WidgetStateProperty.all(shadowColor),
                padding: msPadding ?? WidgetStateProperty.all(padding),
                shape: WidgetStateProperty.all(shape ??
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          borderRadiusAll ?? MyConstant.constant.buttonRadius),
                    ))),
        child: child,
      );
    } else if (buttonType == AuiButtonType.elevated) {
      button = ElevatedButton(
          style: style ??
              ButtonStyle(
                  tapTargetSize: tapTargetSize,
                  visualDensity: VisualDensity.compact,
                  elevation: msElevation ??
                      WidgetStateProperty.resolveWith<double>(
                        (Set<WidgetState> states) {
                          if (states.contains(WidgetState.disabled)) {
                            return 0;
                          } else if (states.contains(WidgetState.pressed)) {
                            return elevation! * 2;
                          } else if (states.contains(WidgetState.hovered)) {
                            return elevation! * 1.5;
                          }
                          return elevation!;
                        },
                      ),
                  backgroundColor: msBackgroundColor ??
                      WidgetStateProperty.resolveWith<Color>(
                        (Set<WidgetState> states) {
                          if (states.contains(WidgetState.disabled)) {
                            return bgColor.withAlpha(100);
                          }
                          return bgColor;
                        },
                      ),
                  shadowColor: msShadowColor ??
                      WidgetStateProperty.all(shadowColor ?? bgColor),
                  padding: msPadding ?? WidgetStateProperty.all(padding),
                  overlayColor: WidgetStateProperty.all(splashColor ??
                      (Theme.of(context).colorScheme.onPrimary.withAlpha(36))),
                  shape: WidgetStateProperty.all(shape ??
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(borderRadiusAll ??
                            MyConstant.constant.buttonRadius),
                      ))),
          onPressed: onPressed,
          child: child);
    } else {
      button = TextButton(
        style: ButtonStyle(
            overlayColor:
                WidgetStateProperty.all(splashColor ?? (bgColor.withAlpha(40))),
            padding: msPadding ?? WidgetStateProperty.all(padding),
            // visualDensity: VisualDensity.standard,

            tapTargetSize: tapTargetSize),
        onPressed: onPressed,
        child: child,
      );
    }

    return block!
        ? Row(
            children: [
              Expanded(child: button),
            ],
          )
        : button;
  }
}
