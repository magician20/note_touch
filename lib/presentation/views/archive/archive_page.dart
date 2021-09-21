import 'package:flutter/material.dart';

class ArchivePage extends StatefulWidget {
  ArchivePage({Key? key}) : super(key: key);

  @override
  _ArchivePageState createState() => _ArchivePageState();
}

class _ArchivePageState extends State<ArchivePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.orangeAccent[200],
        child: Center(child: Text('Archive Page')));
  }
}
