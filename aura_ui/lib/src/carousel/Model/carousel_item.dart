import 'package:flutter/foundation.dart';

class CarouselItem {
  final String imageUrl;
  final VoidCallback onTap;

  CarouselItem({
    required this.imageUrl,
    required this.onTap,
  });
}
