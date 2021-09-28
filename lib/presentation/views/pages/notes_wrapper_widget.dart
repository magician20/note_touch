import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:note_touch/presentation/views/home/home_form_widget.dart';

class NotesWrapperPage extends StatelessWidget {
  ///this key handle drawer state open/close
  final GlobalKey<ScaffoldState>? scaffoldKey;
  const NotesWrapperPage({Key? key,  this.scaffoldKey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // AutoRouter is required to render sub-routes
    return AutoRouter(/*builder: (context, content) => HomeFormWidget(scaffoldKey: scaffoldKey),*/); 
  }
}
