import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_touch/application/auth/auth_bloc.dart';
import 'package:note_touch/presentation/routes/router.gr.dart';


//it's better if it's as same as Splash native
class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) => Timer(
              const Duration(seconds: 5),
              () => AutoRouter.of(context).replaceAll([HomeRoute(),])
              // context.router.pushAndPopUntil(HomeRouter(), predicate: (route) => false)
              ),
          //here will be change to home also
          unauthenticated: (_) => Timer(const Duration(seconds: 5),
              () => AutoRouter.of(context).replaceAll([SignInRoute(),])
              // context.router.pushAndPopUntil(SignInRoute(), predicate: (route) => false)
              ),
        );
      },
      child: _ScreenWidget(),
    );
  }
}

class _ScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 80.0,
            ),
            Image(
                image: AssetImage(
              'assets/icon/icon_app.png',
            )),
            SizedBox(
              height: 50.0,
            ),
            SizedBox(
              width: 200.0,
              child: TextLiquidFill(
                textAlign: TextAlign.center,
                text: 'Touch Note',
                waveColor: Theme.of(context)
                    .primaryColor, //colorScheme not working //error here with primary
                boxBackgroundColor: Theme.of(context).scaffoldBackgroundColor,
                textStyle: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.w900,
                ),
                boxHeight: 200.0,
                waveDuration: const Duration(seconds: 1),
              ),
            )
          ],
        ),
      ),
    );
  }
}
