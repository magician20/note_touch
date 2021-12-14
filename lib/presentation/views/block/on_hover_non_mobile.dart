import 'package:flutter/material.dart';

class OnHoverNonMobile extends StatefulWidget {
 final Widget Function(bool isHovered ) builder;

  const OnHoverNonMobile({Key? key, required this.builder}) : super(key: key);

  @override
  _OnHoverNonMobileState createState() => _OnHoverNonMobileState();
}

class _OnHoverNonMobileState extends State<OnHoverNonMobile> {
  ///value represent visiblity depend on hover the child
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        onEnter: (event) => onEntered(true),
        onExit: (event) => onEntered(false),
        child: widget.builder(isHovered),
        );
  }

  onEntered(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }
}
