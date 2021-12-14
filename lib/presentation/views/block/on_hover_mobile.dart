import 'package:flutter/material.dart';

class OnHoverMobile extends StatefulWidget {
  final Widget Function(bool isHovered) builder;
  const OnHoverMobile({Key? key, required this.builder}) : super(key: key);

  @override
  _OnHoverNonMobileState createState() => _OnHoverNonMobileState();
}

class _OnHoverNonMobileState extends State<OnHoverMobile> {
  ///value represent visiblity depend on hover the child
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        setState(() {
          isHovered = !isHovered;
        });
      },
      child: Container(child: widget.builder(isHovered)),
    );
  }
}
