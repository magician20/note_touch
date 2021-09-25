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
  final _routerKey = GlobalObjectKey('auth_router');
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
          //scaffoldKey: _scaffoldKey,//not working
          backgroundColor: Theme.of(context).bottomAppBarColor,
          routes: [
            NotesRoute(),
            ArchiveRoute(),
            TrashRoute(),
            SettingsRoute(),
            AboutRoute()
          ],
          builder: (context, childWidget, animation) {
            // final tabsRouter = AutoTabsRouter.of(context);
            return Scaffold(
              key: _scaffoldKey,
              drawer: AppDrawer(),
              body: SafeArea(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (Responsive.isShowDrawerSize(context))
                      Expanded(
                        // flex: 1,
                        child: AppDrawer(),
                      ),
                    Expanded(
                        // It takes 5/6 part of the screen
                        flex: 5,
                        //this hold appbar silver and body inside list
                        child: FloatingActionBar(
                            scaffoldKey: _scaffoldKey, child: KeyedSubtree(key: _routerKey,child: childWidget))),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
