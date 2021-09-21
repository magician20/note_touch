import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_touch/application/auth/auth_bloc.dart';
import 'package:note_touch/presentation/routes/router.gr.dart';
import 'package:note_touch/presentation/widgets/drawer_widget.dart';
import 'package:note_touch/presentation/widgets/floating_action_bar.dart';

import '../../../injection.dart';
import '../../shared/responsive.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  //GlobalKey
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<AuthBloc>(),
      child: BlocListener<AuthBloc, AuthState>(
        //Listen trigger only when state will be unauthenticated because of logout
        listener: (context, state) {
          state.maybeMap(
            unauthenticated: (_) {
              //didn't work for  mobile  & Web
              //clear the stack and push to page (worked for web)
              AutoRouter.of(context).popUntilRoot();
              AutoRouter.of(context).replaceAll([SignInRoute()]);
              // AutoRouter.of(context).popUntilRouteWithName(SignInRoute.name);
            },
            orElse: () {},
          );
        },
        child: AutoTabsScaffold(
          // appBarBuilder: (context, tabsRouter) {} ,//so this will not be responsive??
          backgroundColor: Theme.of(context).bottomAppBarColor,
          routes: [
            NotesRoute(),
            ArchiveRoute(),
            TrashRoute(),
            SettingsRoute(),
            AboutRoute()
          ],
          builder: (context, childWidget, animation) {
            return Responsive.isShowDrawerSize(context)
                ? Scaffold(
                    key: _scaffoldKey,
                    drawer: AppDrawer(),
                    body: FloatingActionBar(
                        scaffoldKey: _scaffoldKey, child: childWidget),
                  )
                : Scaffold(
                    key: _scaffoldKey,
                    body: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //redesign this code buy make appbarsilver at start then body(have drawer and home page )
                      children: [
                        //  if (Responsive.isDesktop(context))
                        Expanded(
                          // and it takes 1/6 part of the screen
                          flex: 1,
                          child: AppDrawer(),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          // It takes 5/6 part of the screen
                          flex: 5,
                          //this hold appbar silver and body inside list
                          child: FloatingActionBar(
                              scaffoldKey: _scaffoldKey, child: childWidget),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                      ],
                    ),
                  );
          },
        ),
      ),
    );
  }
}
