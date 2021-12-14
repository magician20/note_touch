import 'package:flutter/material.dart';

class OnHoverButtonAnimatedNonMobile extends StatefulWidget {
  final Widget child;
 // final Widget Function({bool ishovered} ) builder;

  const OnHoverButtonAnimatedNonMobile({Key? key, required this.child}) : super(key: key);

  @override
  _OnHoverButtonAnimatedNonMobileState createState() => _OnHoverButtonAnimatedNonMobileState();
}

class _OnHoverButtonAnimatedNonMobileState extends State<OnHoverButtonAnimatedNonMobile> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    final hoveredTransform = Matrix4.identity()..translate(0,4,1)..scale(1.1);
    final transform = isHovered ? hoveredTransform : Matrix4.identity();
    return MouseRegion(
        onEnter: (event) => onEntered(true),
        onExit: (event) => onEntered(false),
        child: AnimatedContainer(
            duration: const Duration(microseconds: 100),
            transform: transform,
            child: widget.child));
  }

  onEntered(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }
}
