import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:note_touch/presentation/shared/app_icons.dart';
import 'package:note_touch/presentation/shared/responsive.dart';
import 'package:note_touch/presentation/widgets/drawer_header_widget.dart';

import 'drawer_filter.dart';

/// Navigation drawer for the app. need to be update with the theme
/// and click and hover (have done still need to used state management-Cubit)
class AppDrawer extends StatefulWidget {
  //code need to be update
  AppDrawer({Key? key}) : super(key: key);

  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  int _hoveredTabIndex = -1;

  @override
  Widget build(BuildContext context) {
    //need to update the code to use Responsive layout and animation to resize drawer for tablet
    return Material(
      child: Drawer(
        elevation: 5,
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
          child: ListView(
            children: <Widget>[
              MyDrawerHeader(),
              const SizedBox(height: 25),
              DrawerFilterItem(
                icon: thumbtack,
                title: 'Notes',
                isChecked: context.tabsRouter.activeIndex == 0,
                isHovered: _hoveredTabIndex == 0,
                onTap: () {
                  if (Responsive.isMobile(context))
                    AutoRouter.of(context).pop();
                  context.tabsRouter.setActiveIndex(0);
                  // AutoRouter.of(context)
                  //     .innerRouterOf(HomeRoute.name)!
                  //     .navigate(NotesRoute());
                },
                onHover: (_) {
                  if (_hoveredTabIndex != 0)
                    //onHoverTap 0
                    setState(() {
                      _hoveredTabIndex = 0;
                    });
                },
              ),
              Divider(
                color: Theme.of(context).disabledColor, //1
              ),
              DrawerFilterItem(
                icon: archive_outlined,
                title: 'Archive',
                isChecked: context.tabsRouter.activeIndex == 1,
                isHovered: _hoveredTabIndex == 1,
                onTap: () {
                  if (Responsive.isMobile(context))
                    AutoRouter.of(context).pop();
                  //  AutoRouter.innerRouterOf(context, HomeRoute.name)!.push(ArchiveRoute());//didin't work
                  context.tabsRouter.setActiveIndex(1);
                  // AutoRouter.of(context).innerRouterOf(HomeRoute.name)!.navigate(ArchiveRoute());
                },
                onHover: (_) {
                  if (_hoveredTabIndex != 1)
                    //onHoverTap 1
                    setState(() {
                      _hoveredTabIndex = 1;
                    });
                },
              ),
              DrawerFilterItem(
                icon: delete_outline,
                title: 'Trash',
                isChecked: context.tabsRouter.activeIndex == 2,
                isHovered: _hoveredTabIndex == 2,
                onTap: () {
                  if (Responsive.isMobile(context))
                    AutoRouter.of(context).pop();

                  context.tabsRouter.setActiveIndex(2);
                  // AutoRouter.of(context)
                  //     .innerRouterOf(HomeRoute.name)!
                  //     .navigate(TrashRoute());
                },
                onHover: (_) {
                  if (_hoveredTabIndex != 2)
                    //onHoverTap 2
                    setState(() {
                      _hoveredTabIndex = 2;
                    });
                },
              ),
              Divider(
                color: Theme.of(context).disabledColor, //4
              ),
              DrawerFilterItem(
                icon: settings_outlined,
                title: 'Settings',
                isChecked: context.tabsRouter.activeIndex == 3,
                isHovered: _hoveredTabIndex == 3,
                onTap: () {
                  if (Responsive.isMobile(context))
                    AutoRouter.of(context).pop();
                  context.tabsRouter.setActiveIndex(3);
                  // AutoRouter.of(context)
                  //     .innerRouterOf(HomeRoute.name)!
                  //     .navigate(SettingsRoute());
                },
                onHover: (_) {
                  if (_hoveredTabIndex != 3)
                    //onHoverTap 3
                    setState(() {
                      _hoveredTabIndex = 3;
                    });
                },
              ),
              DrawerFilterItem(
                icon: Icons.help_outline,
                title: 'About',
                isChecked: context.tabsRouter.activeIndex == 4,
                isHovered: _hoveredTabIndex == 4,
                onTap: () {
                  if (Responsive.isMobile(context))
                    AutoRouter.of(context).pop();

                  context.tabsRouter.setActiveIndex(4);
                  // AutoRouter.of(context)
                  //     .innerRouterOf(HomeRoute.name)!
                  //     .navigate(AboutRoute());
                },
                onHover: (_) {
                  if (_hoveredTabIndex != 4)
                    //onHoverTap 4
                    setState(() {
                      _hoveredTabIndex = 4;
                    });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
