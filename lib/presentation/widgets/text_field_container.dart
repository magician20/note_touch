import 'package:flutter/material.dart';
import 'package:note_touch/presentation/shared/util.dart';


class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: CustomColors.YellowShadow,
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}
