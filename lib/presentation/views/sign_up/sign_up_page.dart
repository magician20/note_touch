import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_touch/application/auth/sign_up_bloc/signup_bloc.dart';
import 'package:note_touch/presentation/views/sign_up/sign_up_form.dart';

import '../../../injection.dart';


class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider<SignUpBloc>(
      create: (context) => getIt<SignUpBloc>(),
      child: SignUpFormPage(),
    ));
  }
}
