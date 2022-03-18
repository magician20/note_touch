import 'package:auto_route/auto_route.dart';
import 'package:note_touch/presentation/splash/splash_page.dart';
import 'package:note_touch/presentation/views/Trash/trash_page.dart';
import 'package:note_touch/presentation/views/about/about_page.dart';
import 'package:note_touch/presentation/views/archive/archive_page.dart';
import 'package:note_touch/presentation/views/home/home_form_widget.dart';
import 'package:note_touch/presentation/views/home/home_page.dart';
import 'package:note_touch/presentation/views/home/wrapper_page_widget.dart';
import 'package:note_touch/presentation/views/pages/page_form.dart';
import 'package:note_touch/presentation/views/settings/settings_page.dart';
import 'package:note_touch/presentation/views/sign_in/sign_in_page.dart';
import 'package:note_touch/presentation/views/sign_up/sign_up_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  //splash will be removed later on and implemented native splash for android and ios
  //that cna't happen because there's no way to call run AuthBlocListener when native splash running
  routes: <AutoRoute>[
    AutoRoute(
      path: "/splash",
      page: SplashPage,
      maintainState: false,
      initial: true, // i can change the initial dynamic at the appWidget
    ),

    AutoRoute(
      path: "/signin",
      page: SignInPage,
      maintainState: false,
      children: [
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),

    AutoRoute(
      path: "/signup",
      page: SignUpPage,
      children: [
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),

    //Home routes with a nested router (NEED TO ADD GUARD AND CHECK NAVIGATION)
    AutoRoute(
      path: "/home", 
      page: HomePage, 
      children: [
      RedirectRoute(path: '', redirectTo: 'pages'),
      AutoRoute(
          path: 'pages',
          name: "PagesRoute",
          page:RouterPageWrapper, //problem when navigate with drawer from sub tree
          children: [
            //problem when navigate with drawer from sub tree when key can't be found
            AutoRoute(path: '', page: HomeFormWidget),
            // add the guard here to check if the bookId exists first before pushing the page
            AutoRoute(path: ':id',name: 'PageFormRoute', page: PageForm), //idk why 'PageFormRoute' not generated ??
            RedirectRoute(path: "*", redirectTo: ''),
          ]),
      AutoRoute(path: 'settings', page: SettingsPage),
      AutoRoute(path: 'about', page: AboutPage),
      AutoRoute(path: 'archive', page: ArchivePage),
      AutoRoute(path: 'trash', page: TrashPage),
      //for web to handle "/" also i need to chechk which position to add
      RedirectRoute(path: '/', redirectTo: '/home'),
      RedirectRoute(path: '*', redirectTo: ''),
    ]),
    // our other routes

    // redirect all other paths
    RedirectRoute(path: '*', redirectTo: '/signup'),
    //we need 404 page for Web
  ],
)
class $AppRouter {}
