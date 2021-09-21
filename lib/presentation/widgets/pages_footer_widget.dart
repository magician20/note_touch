import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:note_touch/presentation/routes/router.gr.dart';
import 'package:note_touch/presentation/shared/style.dart';


class PageSignUpFooterLabel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Already have an account ?',
            style: TextStyle(
              fontSize: defaultBodyTextStyle.fontSize,
              fontWeight: defaultBodyTextStyle.fontWeight,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          SignUpNavigateLabel(),
        ],
      ),
    );
  }
}

class SignUpNavigateLabel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.router.navigate(SignInRoute());
      },
      child: Text(
        'Login',
        style: TextStyle(
          color: Theme.of(context).primaryColorDark,
          fontSize: defaultBodyTextStyle.fontSize,
          fontWeight: defaultBodyTextStyle.fontWeight,
        ),
      ),
    );
  }
}

class PageLoginFooterLabel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Don't have an account ?",
            style: TextStyle(
              fontSize: defaultBodyTextStyle.fontSize,
              fontWeight: defaultBodyTextStyle.fontWeight,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          LoginNavigateLabel(),
        ],
      ),
    );
  }
}

class LoginNavigateLabel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.router.navigate(SignUpRoute());
      },
      child: Text(
        'Register',
        style: TextStyle(
            color: Theme.of(context).primaryColorDark,
            fontSize: defaultBodyTextStyle.fontSize,
            fontWeight: defaultBodyTextStyle.fontWeight),
      ),
    );
  }
}
