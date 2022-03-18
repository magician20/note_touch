import 'package:flutter/material.dart';

class TrashPage extends StatefulWidget {
  const TrashPage({Key? key}) : super(key: key);

  @override
  _TrashPageState createState() => _TrashPageState();
}

class _TrashPageState extends State<TrashPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.pinkAccent[300],
        child: Center(child: Text('Trash Page')));
  }
}
