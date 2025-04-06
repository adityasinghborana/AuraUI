import 'package:flutter/material.dart';

/// AuiDialog - A customizable dialog widget for Flutter applications.
///
/// This class provides a static method to display a dialog with configurable
/// properties such as title, content, actions, and additional customization options.

class AuiDialog {
  /// Displays a static dialog with customizable options.
  ///
  /// ### Parameters:
  /// - [context] *(required)*: The `BuildContext` required to display the dialog.
  /// - [title] *(required)*: The title of the dialog, displayed at the top.
  /// - [content]: The content widget to be displayed in the dialog body.
  /// - [actions]: A list of action buttons to be placed at the bottom.
  /// - [barrierDismissible]: Whether the dialog should close when tapped outside.
  ///   - Defaults to `false`.
  /// - [paddingAll]: The padding applied to the entire dialog.
  ///   - Defaults to `EdgeInsets.all(16)`.
  /// - [padding]: The padding specifically applied to actions.
  ///   - Defaults to `EdgeInsets.symmetric(horizontal: 20, vertical: 16)`.
  /// - [icon]: An optional leading icon to be displayed before the title.
  /// - [width]: The width of the dialog.
  ///   - Defaults to `400`.
  /// - [borderRadius]: The border radius of the dialog container.
  ///   - Defaults to `BorderRadius.circular(12)`.
  /// - [dividerColor]: The color of the dividers separating sections.
  ///   - Defaults to `Colors.grey`.

  static void static({
    required BuildContext context,
    required String title,
    Widget? content,
    List<Widget>? actions,
    bool barrierDismissible = false,
    EdgeInsets? paddingAll,
    EdgeInsets? padding,
    Widget? icon,
    double? width,
    BorderRadiusGeometry? borderRadius,
    Color? dividerColor,
  }) {
    showDialog(
      barrierDismissible: barrierDismissible,
      context: context,
      builder: (_) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius:
                borderRadius ?? const BorderRadius.all(Radius.circular(12)),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: SizedBox(
            width: width ?? 400, // Default width is 400
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header Section
                Padding(
                  padding: paddingAll ?? const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      if (icon != null) ...[
                        icon,
                        const SizedBox(width: 8),
                      ],
                      Expanded(
                        child: Text(
                          title,
                          style: const TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                      // Close button
                      InkWell(
                        onTap: () => Navigator.pop(context),
                        child: Icon(
                          Icons.close,
                          size: 20,
                          color: Colors.black.withValues(alpha: 0.5),
                        ),
                      )
                    ],
                  ),
                ),

                // Content Section (if provided)
                if (content != null) ...[
                  Divider(
                      height: 0,
                      thickness: 1,
                      color: dividerColor ?? Colors.grey),
                  Padding(
                    padding: paddingAll ?? const EdgeInsets.all(16),
                    child: content,
                  ),
                ],

                // Actions Section (if provided)
                if (actions != null) ...[
                  Divider(
                      height: 0,
                      thickness: 1,
                      color: dividerColor ?? Colors.grey),
                  Padding(
                    padding: padding ??
                        const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: actions,
                    ),
                  ),
                ],
              ],
            ),
          ),
        );
      },
    );
  }
}
