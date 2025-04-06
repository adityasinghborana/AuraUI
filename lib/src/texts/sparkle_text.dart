import 'dart:math';
import 'package:flutter/material.dart';

class Sparkle {
  final String id;
  final double x;
  final double y;
  final Color color;
  final double delay;
  final double scale;
  double lifespan;

  Sparkle({
    required this.id,
    required this.x,
    required this.y,
    required this.color,
    required this.delay,
    required this.scale,
    required this.lifespan,
  });
}

class SparklesText extends StatefulWidget {
  final int sparklesCount;
  final Color firstColor;
  final Color secondColor;
  final Widget child;
  final double sparkleScale;

  const SparklesText({
    Key? key,
    required this.child,
    this.sparklesCount = 10,
    this.firstColor = const Color(0xFF9E7AFF),
    this.secondColor = const Color(0xFFFE8BBB),
    this.sparkleScale = 1.0,
  }) : super(key: key);

  @override
  SparklesTextState createState() => SparklesTextState();
}

class SparklesTextState extends State<SparklesText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final List<Sparkle> _sparkles = [];
  final GlobalKey _childKey = GlobalKey();
  Size _childSize = Size.zero;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(_onLayoutDone);
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    )..addListener(() {
        setState(() {
          for (int i = 0; i < _sparkles.length; i++) {
            _sparkles[i].lifespan -= 0.1;
            if (_sparkles[i].lifespan <= 0) {
              _sparkles[i] = _generateSparkle();
            }
          }
        });
      });
    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onLayoutDone(Duration timeStamp) {
    final RenderBox renderBox =
        _childKey.currentContext!.findRenderObject() as RenderBox;
    _childSize = renderBox.size;
    _initializeSparkles();
  }

  void _initializeSparkles() {
    List<Sparkle> newSparkles =
        List.generate(widget.sparklesCount, (_) => _generateSparkle());
    setState(() {
      _sparkles.addAll(newSparkles);
    });
  }

  Sparkle _generateSparkle() {
    final random = Random();
    return Sparkle(
      id: UniqueKey().toString(),
      x: random.nextDouble() * _childSize.width,
      y: random.nextDouble() * _childSize.height,
      color: random.nextBool() ? widget.firstColor : widget.secondColor,
      delay: random.nextDouble() * 2,
      scale: random.nextDouble() * widget.sparkleScale + 0.3,
      lifespan: random.nextDouble() * 10 + 5,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          key: _childKey,
          child: widget.child,
        ),
        ..._sparkles.map((sparkle) => _buildSparkle(sparkle)),
      ],
    );
  }

  Widget _buildSparkle(Sparkle sparkle) {
    return Positioned(
      left: sparkle.x,
      top: sparkle.y,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          double animationValue = (_controller.value + sparkle.delay) % 1.0;
          double opacity = animationValue < 0.5
              ? animationValue * 2
              : (1 - animationValue) * 2;
          double scale = sparkle.scale * animationValue;
          return Opacity(
            opacity: opacity,
            child: Transform.scale(
              scale: scale,
              child: Transform.rotate(
                angle: pi * 2 * animationValue,
                child: Icon(
                  Icons.star,
                  color: sparkle.color,
                  size: 21,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
