import 'package:flutter/material.dart';

class ScreenWrapper extends StatelessWidget {

  final Widget child;
  final GlobalObjectKey key;

  ScreenWrapper({required this.key ,required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key:key,
      body: child,
    );
  }
}