import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

class PageForm extends StatefulWidget {
  final int id;
  PageForm({@PathParam('id') required this.id, Key? key, }): super(key: key);

  @override
  _PageFormState createState() => _PageFormState();
}

class _PageFormState extends State<PageForm> {
  @override
  Widget build(BuildContext context) {
    //widget.id;
    return Container(
        color: Colors.blueGrey[100],
        child: Center(child: Text('Note Page')));
  }
}
