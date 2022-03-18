import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_touch/application/auth/auth_bloc.dart';
import 'package:note_touch/presentation/controllers/cubit/drawer_controller.dart';
import 'package:note_touch/presentation/routes/router.gr.dart';
import 'package:note_touch/presentation/widgets/drawer_widget.dart';

import '../../../injection.dart';
import '../../shared/responsive.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<AuthBloc>(),
      child: BlocListener<AuthBloc, AuthState>(
        //Listen trigger only when state will be unauthenticated because of logout
        listener: (context, state) {
          state.maybeMap(
            unauthenticated: (_) {
              //work for  mobile  & Web
              //clear the stack and push to page (worked for web)
              AutoRouter.of(context).popUntilRoot();
              AutoRouter.of(context).replaceAll([SignInRoute()]);
              // AutoRouter.of(context).popUntilRouteWithName(SignInRoute.name);
            },
            orElse: () {},
          );
        },
        child: AutoTabsRouter(
          //not working for pageslist widget (cause nested route & lose state when size vhange from mobile to desktop)
          key: GlobalObjectKey("tabs-router"),
          routes: const [
            PagesRoute(),
            ArchiveRoute(),
            TrashRoute(),
            SettingsRoute(),
            AboutRoute()
          ],
          builder: (context, childWidget, animation) {    
            // using read because we only use a value that never changes.
            final scaffoldKey =context.read<DrawerControllerCubit>().scaffoldKey;
            return Scaffold(
              backgroundColor: Theme.of(context).bottomAppBarColor,
              key: scaffoldKey,
              drawerEnableOpenDragGesture:
                  Responsive.isShowDrawerSize(context) ? false : true,
              drawer: AppDrawer(),
              body: FadeTransition(
                opacity: animation,
                child: SafeArea(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (Responsive.isShowDrawerSize(context))
                        Expanded(
                          flex: 1,
                          child: AppDrawer(),
                        ),
                      Expanded(
                        // It takes 5/6 part of the screen
                        flex: 5,
                        //this hold appbar silver and body inside list
                        child: childWidget,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
