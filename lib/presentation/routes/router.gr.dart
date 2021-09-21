// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../splash/splash_page.dart' as _i3;
import '../views/about/about_page.dart' as _i9;
import '../views/archive/archive_page.dart' as _i10;
import '../views/home/home_form_widget.dart' as _i7;
import '../views/home/home_page.dart' as _i6;
import '../views/settings/settings_page.dart' as _i8;
import '../views/sign_in/sign_in_page.dart' as _i4;
import '../views/sign_up/sign_up_page.dart' as _i5;
import '../views/Trash/trash_page.dart' as _i11;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.SplashPage();
        }),
    SignInRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.SignInPage();
        }),
    SignUpRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.SignUpPage();
        }),
    HomeRouter.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args =
              data.argsAs<HomeRouterArgs>(orElse: () => const HomeRouterArgs());
          return _i6.HomePage(key: args.key);
        }),
    NotesRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i7.HomeFormWidget();
        }),
    SettingsRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i8.SettingsPage();
        }),
    AboutRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i9.AboutPage();
        }),
    ArchiveRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ArchiveRouteArgs>(
              orElse: () => const ArchiveRouteArgs());
          return _i10.ArchivePage(key: args.key);
        }),
    TrashRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args =
              data.argsAs<TrashRouteArgs>(orElse: () => const TrashRouteArgs());
          return _i11.TrashPage(key: args.key);
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig('/#redirect',
            path: '/', redirectTo: '/splash', fullMatch: true),
        _i1.RouteConfig(SplashRoute.name, path: '/splash'),
        _i1.RouteConfig(SignInRoute.name, path: '/signin', children: [
          _i1.RouteConfig('*#redirect',
              path: '*', redirectTo: '', fullMatch: true)
        ]),
        _i1.RouteConfig(SignUpRoute.name, path: '/signup', children: [
          _i1.RouteConfig('*#redirect',
              path: '*', redirectTo: '', fullMatch: true)
        ]),
        _i1.RouteConfig(HomeRouter.name, path: '/home', children: [
          _i1.RouteConfig('#redirect',
              path: '', redirectTo: 'notes', fullMatch: true),
          _i1.RouteConfig(NotesRoute.name, path: 'notes'),
          _i1.RouteConfig(SettingsRoute.name, path: 'settings'),
          _i1.RouteConfig(AboutRoute.name, path: 'about'),
          _i1.RouteConfig(ArchiveRoute.name, path: 'archive'),
          _i1.RouteConfig(TrashRoute.name, path: 'trash'),
          _i1.RouteConfig('/#redirect',
              path: '/', redirectTo: '/home', fullMatch: true),
          _i1.RouteConfig('*#redirect',
              path: '*', redirectTo: '', fullMatch: true)
        ]),
        _i1.RouteConfig('*#redirect',
            path: '*', redirectTo: '/signup', fullMatch: true)
      ];
}

class SplashRoute extends _i1.PageRouteInfo {
  const SplashRoute() : super(name, path: '/splash');

  static const String name = 'SplashRoute';
}

class SignInRoute extends _i1.PageRouteInfo {
  const SignInRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/signin', initialChildren: children);

  static const String name = 'SignInRoute';
}

class SignUpRoute extends _i1.PageRouteInfo {
  const SignUpRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/signup', initialChildren: children);

  static const String name = 'SignUpRoute';
}

class HomeRouter extends _i1.PageRouteInfo<HomeRouterArgs> {
  HomeRouter({_i2.Key? key, List<_i1.PageRouteInfo>? children})
      : super(name,
            path: '/home',
            args: HomeRouterArgs(key: key),
            initialChildren: children);

  static const String name = 'HomeRouter';
}

class HomeRouterArgs {
  const HomeRouterArgs({this.key});

  final _i2.Key? key;
}

class NotesRoute extends _i1.PageRouteInfo {
  const NotesRoute() : super(name, path: 'notes');

  static const String name = 'NotesRoute';
}

class SettingsRoute extends _i1.PageRouteInfo {
  const SettingsRoute() : super(name, path: 'settings');

  static const String name = 'SettingsRoute';
}

class AboutRoute extends _i1.PageRouteInfo {
  const AboutRoute() : super(name, path: 'about');

  static const String name = 'AboutRoute';
}

class ArchiveRoute extends _i1.PageRouteInfo<ArchiveRouteArgs> {
  ArchiveRoute({_i2.Key? key})
      : super(name, path: 'archive', args: ArchiveRouteArgs(key: key));

  static const String name = 'ArchiveRoute';
}

class ArchiveRouteArgs {
  const ArchiveRouteArgs({this.key});

  final _i2.Key? key;
}

class TrashRoute extends _i1.PageRouteInfo<TrashRouteArgs> {
  TrashRoute({_i2.Key? key})
      : super(name, path: 'trash', args: TrashRouteArgs(key: key));

  static const String name = 'TrashRoute';
}

class TrashRouteArgs {
  const TrashRouteArgs({this.key});

  final _i2.Key? key;
}
