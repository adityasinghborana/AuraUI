/// The main library for Aura UI, providing UI components for carousels,
/// buttons, and text effects.
///
/// This library exports key components and utilities for creating carousel
/// sliders, various types of buttons, and special text effects to enhance
/// your Flutter application's UI.

library aura_ui;

/// Carousel component for displaying a series of images or items in a slider format.
export 'src/carousel/carousel.dart';

/// Carousel component with on-tap functionality, allowing each item to be
/// tapped to trigger custom actions.
export 'src/carousel/carouselwithontap.dart';

/// Enum representing different button types for the carousel navigation.
export 'enums/carousel_button_type.dart';

/// Enum representing different indicator types for the carousel slider, such as dots or lines.
export 'enums/carousel_indicator_type.dart';

/// Enum to specify different border radius options for button styling.
export 'enums/button_border_radius.dart';

/// Icon button component, providing a customizable button with an icon only.
export 'src/buttons/icon_button.dart';

/// Loading button component, offering a button with a loading indicator
/// to indicate ongoing actions.
export 'src/buttons/loading_button.dart';

/// Simple button component, a standard customizable button with text.
export 'src/buttons/simple_button.dart';

/// Model for individual carousel items, allowing configuration of each
/// item in the carousel.
export 'src/carousel/Model/carousel_item.dart';

/// Sparkle text component, providing animated sparkle effects to text for a playful UI.
export 'src/texts/sparkle_text.dart';

export 'src/buttons/buttons.dart';
export 'src/toast/toasts.dart';
export 'src/dialogs/dialogs.dart';
