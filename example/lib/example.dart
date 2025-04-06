import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'buttons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Button Page',
        theme: ThemeData(
          pageTransitionsTheme: PageTransitionsTheme(
            builders: kIsWeb
                ? {
                    // No animations for every OS if the app running on the web
                    for (final platform in TargetPlatform.values)
                      platform: const NoTransitionsBuilder(),
                  }
                : const {
                    // handel other platforms you are targeting
                  },
          ),
          iconTheme: IconThemeData(color: Colors.white),
          scaffoldBackgroundColor: Colors.grey[200],
          buttonTheme:
              ButtonThemeData(colorScheme: Theme.of(context).colorScheme),
          colorScheme: ColorScheme.fromSeed(
              surface: Colors.black87,
              seedColor: Colors.black87,
              onPrimary: Colors.white,
              primary: Colors.black87),
        ),
        routes: {
          '/': (context) => ButtonsPage(),
        });
  }
}

class NoTransitionsBuilder extends PageTransitionsBuilder {
  const NoTransitionsBuilder();

  @override
  Widget buildTransitions<T>(
    PageRoute<T>? route,
    BuildContext? context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget? child,
  ) {
    // only return the child without warping it with animations
    return child!;
  }
}
