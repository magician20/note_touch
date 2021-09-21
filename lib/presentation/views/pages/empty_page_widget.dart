import 'package:flutter/material.dart';
import 'package:note_touch/presentation/shared/app_icons.dart';


//also we can make it to change image depend on which page we navigate to
class EmptyPageWidget extends StatelessWidget {
  const EmptyPageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent[100],
      alignment: Alignment.center,
      margin: const EdgeInsets.fromLTRB(1.5, 0.0, 1.5, 0.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Expanded(flex: 1, child: SizedBox()),
          Icon(
            thumbtack,
            size: 120,
            color: Theme.of(context).primaryColor,
          ),
          Expanded(
            flex: 2,
            child: Text(
              "Empty Note Page",
              style: TextStyle(
                color: Theme.of(context).primaryColorDark,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
