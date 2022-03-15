import 'package:flutter/material.dart';

/// A single filter in the drawer's filters list.
/// Build an instance of [DrawerFilterItem].
///
/// Given a required [title], an optional leading [icon],
/// and whether the item [isChecked].
class DrawerFilterItem extends StatelessWidget {
  const DrawerFilterItem({
    Key? key,
    required this.icon,
    this.iconSize = 25,
    required this.title,
    this.isChecked = false,
    this.isHovered = false,
    required this.onTap,
    required this.onHover,
  }) : super(key: key);

  final IconData? icon;
  final double? iconSize;
  final String? title;
  final bool? isChecked;
  final bool? isHovered;
  final VoidCallback? onTap;
  final Function(bool) onHover;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsetsDirectional.only(end: 12),
        child: InkWell(
          // focusColor: isHovered!?Theme.of(context).focusColor:Colors.transparent,
          //  hoverColor: isHovered!? Theme.of(context).hoverColor : Colors.transparent,
          borderRadius:
              const BorderRadius.horizontal(right: Radius.circular(30)),
          child: Container(
            decoration: ShapeDecoration(
              color: _colorShapeStatus(context),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
              ),
            ),
            padding: const EdgeInsetsDirectional.only(
                top: 12.5, bottom: 12.5, start: 30, end: 18),
            child: Row(
              children: <Widget>[
                if (icon != null)
                  Expanded(
                    flex: 1,
                    child: Icon(
                      icon,
                      size: iconSize,
                      color: isChecked!
                          ? Theme.of(context).primaryColor
                          : Theme.of(context).disabledColor,
                    ),
                  ),
                if (icon != null) SizedBox(width: 24),
                Expanded(
                  flex: 2,
                  child: Text(
                    title!,
                    style: TextStyle(
                      color: isChecked!
                          ? Theme.of(context).primaryColor
                          : Theme.of(context).disabledColor,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
          onTap: onTap,
          onHover: onHover,
        ),
      );

  // need to be update that code
  Color? _colorShapeStatus(BuildContext context) {
    if (isChecked == true && (isHovered == true || isHovered == false)) {
      return Theme.of(context).textSelectionTheme.selectionColor;
    } else if (isChecked == false && isHovered == false) {
      return Colors.transparent;
    } else if (isChecked == false && isHovered == true) {
      return Theme.of(context).hoverColor;
    }
    return Theme.of(context).textSelectionTheme.selectionColor;
  }
}
