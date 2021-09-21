import 'package:flutter/material.dart';
import 'package:note_touch/presentation/views/settings/pick_color_dialog.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

//UI need to be update maybe by using LayoutBuilder and oriantaion for color
class _SettingsPageState extends State<SettingsPage> {
  //final pickColorKey = GlobalObjectKey('pick_color');
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
         margin: const EdgeInsets.fromLTRB(1.5, 0.0, 1.5, 0.0),
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Settings'),
          ),
          body: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.all(20.0),
              alignment: Alignment.center,
              child: InkWell(
                hoverColor: Theme.of(context).textSelectionTheme.selectionColor,
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return PickColorDialog();
                      });
                },
                child: ListTile(
                  title: Text(
                    "Theme",
                    style: TextStyle(fontSize: 20),
                  ),
                  trailing: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

}
