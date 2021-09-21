import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:auto_route/auto_route.dart';
import 'package:note_touch/application/auth/sign_in_bloc/signin_bloc.dart';
import 'package:note_touch/presentation/routes/router.gr.dart';
import 'package:note_touch/presentation/views/sign_in/widgets/entery_field_email_widget.dart';
import 'package:note_touch/presentation/views/sign_in/widgets/entery_field_password_widget.dart';
import 'package:note_touch/presentation/widgets/pages_footer_widget.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({
    Key? key,
  }) : super(key: key);

  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool get isPopulated =>
      _emailController.text.isNotEmpty && _passwordController.text.isNotEmpty;

  bool isLoginButtonEnabled(SignInState state) {
    final bool isForm =state.emailAddress!.isValid();
    return isForm && isPopulated && !state.isSubmitting!;
  }

  @override
  void initState() {
    super.initState();
    _emailController.addListener(_onChangedEmail);
    _passwordController.addListener(_onChangedPassword);
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocListener<SignInBloc, SignInState>(
      listener: (BuildContext context, state) {
        state.authFailureOrSuccessOption!.fold(
          () {},
          (either) {
            either.fold(
              (failure) {
                FlushbarHelper.createError(
                  message: failure.map(
                    // Use localized strings here in your apps
                    cancelledByUser: (_) => 'Cancelled',
                    serverError: (_) => 'Server error',
                    emailAlreadyInUse: (_) => 'Email already in use',
                    invalidEmailAndPasswordCombination: (_) =>
                        'Invalid email and password combination',
                    storageWriteFailed: (_) =>
                        'Secure Storage write data Failed',
                  ),
                ).show(context);
              },
              (_) {
                //Naviagate to home page for Notes and not bk again to sign page until u loged out
                //AutoRouter.of(context).pushAndPopUntil(HomeRouter(), predicate: (route) => false);
                // AutoRouter.of(context).popUntilRoot();
                AutoRouter.of(context).replaceAll([HomeRouter()]);
              },
            );
          },
        );
      },
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              width: size.width * 0.8,
              height: size.height,
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: SizedBox(height: size.height * 0.03),
                  ),
                  Expanded(
                    flex: 3,
                    child: Hero(
                      tag: 'Clipboard',
                      child: Image.asset('assets/images/Clipboard.png'),
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: ListView(
                      children: <Widget>[
                        Form(child: BlocBuilder<SignInBloc, SignInState>(
                            builder: (BuildContext context, SignInState state) {
                          return Column(
                            children: <Widget>[
                              // can make it simple by using context.select<SignInBloc>((SignInBloc bloc)=>bloc.state.email) & Builder widget
                              //same for below also
                              EnterFieldEmail(_emailController),
                              EnterFieldPassword(_passwordController),
                            ],
                          );
                        })),
                        SizedBox(
                          height: 15.0,
                        ),
                        BlocBuilder<SignInBloc, SignInState>(
                            builder: (BuildContext context, SignInState state) {
                          // return _sumbitButton(context, state,
                          //     isButtonEbabled: isLoginButtonEnabled(state));
                          return IgnorePointer(
                            ignoring: !isLoginButtonEnabled(state),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    vertical: 20.0, horizontal: 20.0),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5)),
                                    side: BorderSide(
                                        color: Theme.of(context).buttonColor)),
                                primary: isLoginButtonEnabled(state)
                                    ? Theme.of(context).buttonColor
                                    : Theme.of(context)
                                        .scaffoldBackgroundColor, //background
                                onPrimary: isLoginButtonEnabled(state)
                                    ? Theme.of(context).scaffoldBackgroundColor
                                    : Theme.of(context)
                                        .buttonColor, //foreground
                              ),
                              onPressed: () {
                                //trigger the event to start check user info and depend on that the state will change
                                context.read<SignInBloc>().add(const SignInEvent.signInWithEmailAndPasswordPressed());
                              },
                              child: state.isSubmitting!
                                  ? CircularProgressIndicator(
                                      backgroundColor: Theme.of(context)
                                          .scaffoldBackgroundColor,
                                      color: Theme.of(context).buttonColor,
                                    )
                                  : const Text(
                                      "Sgin In",
                                      style: TextStyle(fontSize: 20),
                                    ),
                            ),
                          );
                        }),
                        // Container(
                        //   padding: const EdgeInsets.symmetric(vertical: 10),
                        //   alignment: Alignment.centerRight,
                        //   child: const Text('Forgot Password ?',
                        //       style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                        // ),
                        //  _divider(),
                        // //we will be remove to add google AUTH
                        Container(
                          height: MediaQuery.of(context).size.height / 9,
                          alignment: Alignment.bottomCenter,
                          child: PageLoginFooterLabel(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onChangedEmail() {
    context
        .read<SignInBloc>()
        .add(SignInEvent.emailChanged(_emailController.text));
  }

  void _onChangedPassword() {
    context
        .read<SignInBloc>()
        .add(SignInEvent.passwordChanged(_passwordController.text));
  }
}



  ///create widget
  // Widget _divider() {
  //   return Container(
  //     margin: const EdgeInsets.symmetric(vertical: 10),
  //     child: Row(
  //       children: const <Widget>[
  //         SizedBox(
  //           width: 15,
  //         ),
  //         Expanded(
  //           child: Padding(
  //             padding: EdgeInsets.symmetric(horizontal: 10),
  //             child: Divider(
  //               thickness: 1,
  //             ),
  //           ),
  //         ),
  //         Text('or'),
  //         Expanded(
  //           child: Padding(
  //             padding: EdgeInsets.symmetric(horizontal: 10),
  //             child: Divider(
  //               thickness: 1,
  //             ),
  //           ),
  //         ),
  //         SizedBox(
  //           width: 15,
  //         ),
  //       ],
  //     ),
  //   );
  // }
