import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:url_strategy/url_strategy.dart';

import 'application/simple_bloc_delegate.dart';
import 'injection.dart';
import 'presentation/app_widget.dart';

void main() {
/*  
 *WidgetsFlutterBinding.ensureInitialized() is required in Flutter v1.9.4+ 
 *before using any plugins if the code is executed before runApp. 
 */
  WidgetsFlutterBinding.ensureInitialized();
  //build injection
  configureInjection();
  //For remove # from URL for all platform, read docs
  setPathUrlStrategy();
  //build block observer
   BlocOverrides.runZoned(
    () => runApp(App()),
    blocObserver: SimpleBlocDelegate(),
  );
  
}
