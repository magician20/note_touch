import 'package:flutter/material.dart';

class BlockTextWidget extends StatefulWidget {

  const BlockTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  _BlockTextWidgetState createState() => _BlockTextWidgetState();
}

class _BlockTextWidgetState extends State<BlockTextWidget> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return ConstrainedBox(
      //  fit: FlexFit.loose,
      constraints: BoxConstraints(
        maxHeight: height, //when it reach the max it will use scroll
        maxWidth: width,
      ),
      child: const TextField(
        //style: ,
        keyboardType: TextInputType.multiline,
        maxLines: null,
        minLines: 1,
        decoration: InputDecoration(
          fillColor: Colors.white,
        //  filled: true,
          hintText: "Type '/' for commands ",
          border: InputBorder.none,
        ),
      ),
    );
  }
}
