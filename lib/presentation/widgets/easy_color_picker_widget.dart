import 'package:flutter/material.dart';

//or use Pub flutter_colorpicker: ^0.5.0 <<used
//not used
class EasyColorPicker extends StatefulWidget {
  final Function onSelectColor; // This function sends the selected color to outside
  final List<Color> availableColors; // List of pickable colors
  final Color initialColor; // The default picked color
  final bool circleItem; // Determnie shapes of color cells

  EasyColorPicker(
      {required this.onSelectColor,//replace with cubit
      required this.availableColors,
      required this.initialColor,//will be taken from shared_preferences built inside this class
      this.circleItem = true});

  @override
  _MyColorPickerState createState() => _MyColorPickerState();
}

class _MyColorPickerState extends State<EasyColorPicker> {
  // This variable used to determine where the checkmark will be
  late Color _pickedColor;

  @override
  void initState() {
    _pickedColor = widget.initialColor;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 50,
            childAspectRatio: 1 / 1,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemCount: widget.availableColors.length,
        itemBuilder: (context, index) {
          final itemColor = widget.availableColors[index];
          return InkWell(
            onTap: () {
              widget.onSelectColor(itemColor);
              setState(() {
                _pickedColor = itemColor;
              });
            },
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  color: itemColor,
                  shape: widget.circleItem == true
                      ? BoxShape.circle
                      : BoxShape.rectangle,
                  border: Border.all(width: 1, color: itemColor)),
              child: itemColor == _pickedColor
                  ? Center(
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                      ),
                    )
                  : Container(),
            ),
          );
        },
      ),
    );
  }
}