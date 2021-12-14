import 'package:flutter/material.dart';

class AddActionBlockButton extends StatefulWidget {
  const AddActionBlockButton({Key? key}) : super(key: key);

  @override
  _AddActionBlockButtonState createState() => _AddActionBlockButtonState();
}

class _AddActionBlockButtonState extends State<AddActionBlockButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: const Size(30.0, 30.0), // button width and height
      child: ClipRRect(
        child: Material(
          // color: Colors.orange, // button color
          child: InkWell(
            //     splashColor: Colors.green, // splash color
            onTap: () {}, // button pressed
            child:const Icon(
              Icons.add_sharp,
              color: Color.fromRGBO(195,194,192,1),
              size: 25.0,
            ),
          ),
        ),
      ),
    );
  }
}
