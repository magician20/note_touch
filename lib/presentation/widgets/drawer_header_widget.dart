import 'package:flutter/material.dart';

class MyDrawerHeader extends StatelessWidget {
  const MyDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
          child: RichText(
            text: TextSpan(
              style: TextStyle(
                color: Theme.of(context).primaryColorDark,
                fontSize: 26,
                fontWeight: FontWeight.w300,
                letterSpacing: -2.5,
              ),
              children: [
                TextSpan(
                  text: 'Touch ',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                TextSpan(
                  text: ' Note',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }
}
