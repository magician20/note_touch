import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_touch/application/auth/sign_in_bloc/signin_bloc.dart';
import 'package:note_touch/presentation/views/sign_in/sign_in_form.dart';

import '../../../injection.dart';


class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<SignInBloc>(
          create: (context) => getIt<SignInBloc>(),
          child: SignInForm()),
    );
  }
}
