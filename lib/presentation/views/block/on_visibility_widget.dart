import 'package:flutter/material.dart';

class OnVisibilityWidget extends StatefulWidget {
  final Widget child;
  ///value represent visiblity depend on hover the parent
  final bool isVisible;
  const OnVisibilityWidget(
      {Key? key, required this.child, required this.isVisible})
      : super(key: key);

  @override
  _OnVisibilityWidgetState createState() => _OnVisibilityWidgetState();
}

class _OnVisibilityWidgetState extends State<OnVisibilityWidget> {
  @override
  Widget build(BuildContext context) {
    return Visibility(
      maintainSize: true,
      maintainAnimation: true,
      maintainState: true,
      visible: widget.isVisible,
      child: widget.child,
    );
  }
}
