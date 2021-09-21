import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:note_touch/application/theme/theme_bloc.dart';
import 'package:note_touch/presentation/shared/app_themes.dart';

class PickColorDialog extends StatefulWidget {
  PickColorDialog({Key? key}) : super(key: key);

  @override
  _PickColorDialogState createState() => _PickColorDialogState();
}

class _PickColorDialogState extends State<PickColorDialog> {
  Color pickerColor = ThemeBloc().state.themeData!.primaryColor;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          title: Text(
            "Pick Your Color",
            style: TextStyle(
                color: Theme.of(context).primaryColorDark, fontSize: 20),
          ),
          actions: [
            Center(
              child: TextButton(
                child: Text("Select",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor, fontSize: 20)),
                onPressed: () => AutoRouter.of(context).pop(),
              ),
            ),
          ],
          //fix the render code and build a classnot funcs
          content: Builder(
            builder: (context) {
              // Get available height and width of the build area of this widget. Make a choice depending on the size.
              var height = MediaQuery.of(context).size.height;
              var width = MediaQuery.of(context).size.width;
              return Container(
                height: height * 0.2,
                width: width * 0.3,
                padding: EdgeInsets.all(16.0),
                child: ListView(shrinkWrap: true, //just set this property
                    children: <Widget>[
                      BlockPicker(
                          pickerColor: pickerColor, //that for dialog value
                          availableColors: appThemeList,
                          onColorChanged: (pickerColor) {
                            this.pickerColor = pickerColor;
                            var value = AppTheme
                                .values[appThemeList.indexOf(pickerColor)];
                            BlocProvider.of<ThemeBloc>(context)
                                .add(ThemeEvent.themeChanged(value));
                          })
                    ]),
              );
            },
          ),
        ),
      ),
    );
  }
}
