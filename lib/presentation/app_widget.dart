import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_touch/application/auth/auth_bloc.dart';
import 'package:note_touch/application/theme/theme_bloc.dart';
import 'package:note_touch/presentation/controllers/cubit/drawer_controller.dart';
import 'package:note_touch/presentation/routes/router.gr.dart';


import '../injection.dart';


class App extends StatefulWidget {
  App({Key? key}) : super(key: key);

  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  // make sure you don't initiate your router inside of the build function.
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    //print(Color(int.parse("0xfffafafa")));
   // String valueString = colorString.split('(0x')[1].split(')')[0]; //valueString="fffafafa"
    // Color(int.parse(valueString, radix: 16))
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),),
        BlocProvider(create: (_) => getIt<ThemeBloc>()),
        BlocProvider(create: (_) => getIt<DrawerControllerCubit>()), //need to revise the code
        //BlocProvider(create: (context) => getIt<GridviewCubit>()),
      ],
      //ThemeBloc at the Root LVL
      child: BlocBuilder<ThemeBloc, ThemeState>(
        buildWhen: (previousState, state) {
          if (previousState == state) return false;
          return true;
        },
        builder: (context, state) {
          return MaterialApp.router(
            //title: 'Touch Note',
            //adding theme state
            theme: state.themeData, 
            debugShowCheckedModeBanner: false,
            routerDelegate: _appRouter.delegate(),//AutoRouterDelegate(_appRouter,navigatorObservers:() => [MyNavigatorObserver()],),
            routeInformationParser: _appRouter.defaultRouteParser(),
          );
        },
      ),
    );
  }

}
