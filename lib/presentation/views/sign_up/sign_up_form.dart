import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_touch/application/auth/sign_up_bloc/signup_bloc.dart';
import 'package:note_touch/presentation/routes/router.gr.dart';
import 'package:note_touch/presentation/views/sign_up/widgets/back_button_widget.dart';
import 'package:note_touch/presentation/views/sign_up/widgets/entery_field_email_widget.dart';
import 'package:note_touch/presentation/views/sign_up/widgets/entery_field_first_name_widget.dart';
import 'package:note_touch/presentation/views/sign_up/widgets/entery_field_last_name_widget.dart';
import 'package:note_touch/presentation/views/sign_up/widgets/entery_field_password_widget.dart';
import 'package:note_touch/presentation/widgets/pages_footer_widget.dart';

class SignUpFormPage extends StatefulWidget {
  final String? title;
  const SignUpFormPage({Key? key, this.title}) : super(key: key);

  @override
  _SignUpFormPageState createState() => _SignUpFormPageState();
}

class _SignUpFormPageState extends State<SignUpFormPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();

  bool get isPopulated =>
      _firstNameController.text.isNotEmpty &&
      _lastNameController.text.isNotEmpty &&
      _emailController.text.isNotEmpty &&
      _passwordController.text.isNotEmpty;

  bool isLoginButtonEnabled(SignUpState state) {
    final bool isForm = state.emailAddress!.isValid() &&
        state.password!.isValid() &&
        state.firstName!.isValid();
    state.lastName!.isValid();
    return isForm && isPopulated && !state.isSubmitting!;
  }

  @override
  void initState() {
    super.initState();
    _emailController.addListener(_onChangedEmail);
    _passwordController.addListener(_onChangedPassword);
    _firstNameController.addListener(_onChangedFirstName);
    _lastNameController.addListener(_onChangedLastName);
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    super.dispose();
  }

  void _onChangedEmail() {
    context
        .read<SignUpBloc>()
        .add(SignUpEvent.emailChanged(_emailController.text));
  }

  void _onChangedPassword() {
    context
        .read<SignUpBloc>()
        .add(SignUpEvent.passwordChanged(_passwordController.text));
  }

  void _onChangedFirstName() {
    context
        .read<SignUpBloc>()
        .add(SignUpEvent.firstNameChanged(_firstNameController.text));
  }

  void _onChangedLastName() {
    context
        .read<SignUpBloc>()
        .add(SignUpEvent.lastNameChanged(_lastNameController.text));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocListener<SignUpBloc, SignUpState>(
      listener: (BuildContext context, SignUpState state) {
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
                        'Secure Storage write date failed',
                  ),
                ).show(context);
              },
              (_) {
                //1-move to login page. or 2- do auth for login automatic and move to home page
                context.router.navigate(SignInRoute());
              },
            );
          },
        );
      },
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: SingleChildScrollView(
            child: Container(
          width: size.width,
          height: size.height,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                width: size.width * 0.8,
                height: size.height,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: <Widget>[
                    const Expanded(
                      flex: 1,
                      child: SizedBox(),
                    ),
                    Expanded(
                         flex: 12,
                        child: ListView(
                      children: <Widget>[
                        Form(child: BlocBuilder<SignUpBloc, SignUpState>(
                            builder: (BuildContext context, state) {
                          return Column(
                            children: <Widget>[
                              EnteryFieldFirstName(_firstNameController),
                              EnteryFieldLastName(_lastNameController),
                              EnterFieldEmail(_emailController),
                              EnterFieldPassword(_passwordController),
                            ],
                          );
                        }))
                      ],
                    )),
                    const SizedBox(
                      height: 10.0,
                    ),
                    BlocBuilder<SignUpBloc, SignUpState>(
                        builder: (BuildContext context, state) {
                      return _regiterButton(context, state,
                          isButtonEbabled: isLoginButtonEnabled(state));
                    }),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: PageSignUpFooterLabel(),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(top: 25, left: 0, child: BackButtonIn()),
            ],
          ),
        )),
      ),
    );
  }

  Widget _regiterButton(BuildContext context, SignUpState state,
      {bool isButtonEbabled = false}) {
    return IgnorePointer(
      ignoring: !isButtonEbabled,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          // padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 150.0),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              side: BorderSide(color: Theme.of(context).buttonColor)),
          primary: isButtonEbabled
              ? Theme.of(context).buttonColor
              : Theme.of(context).scaffoldBackgroundColor, //background
          onPrimary: isButtonEbabled
              ? Theme.of(context).scaffoldBackgroundColor
              : Theme.of(context).buttonColor, //foreground
        ),
        onPressed: () {
          //trigger the event to start check register User info and depend on that the state will change
          context
              .read<SignUpBloc>()
              .add(const SignUpEvent.registerWithEmailAndPasswordPressed());
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 50.0,
          alignment: Alignment.center,
          child: state.isSubmitting!
              ? const CircularProgressIndicator(
                  backgroundColor:
                      Colors.orange, //Theme.of(context).colorScheme.primary
                )
              : const Text(
                  'Register Now',
                  style: TextStyle(fontSize: 20),
                ),
        ),
      ),
    );
  }
}
