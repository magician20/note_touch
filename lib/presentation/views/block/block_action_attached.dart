import 'package:flutter/material.dart';
import 'package:note_touch/presentation/views/block/add_action_block.dart';
import 'package:note_touch/presentation/views/block/conditional_parent_widget.dart';
import 'package:note_touch/presentation/views/block/menu_action_block.dart';
import 'package:note_touch/presentation/views/block/on_hover_animated_button_nonmobile.dart';

class BlockActionAttached extends StatefulWidget {
  final bool isMobile;

  const BlockActionAttached({Key? key, required this.isMobile})
      : super(key: key);

  @override
  _BlockActionAttachedState createState() => _BlockActionAttachedState();
}

class _BlockActionAttachedState extends State<BlockActionAttached> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ConditionalParentWidget(
          condition: !widget.isMobile,
          parentBuilder: (child) {
            return OnHoverButtonAnimatedNonMobile(child: child);
          },
          child: AddActionBlockButton(),
        ),
        ConditionalParentWidget(
            condition: !widget.isMobile,
            parentBuilder: (child) {
              return OnHoverButtonAnimatedNonMobile(child: child);
            },
            child: MenuActionBlockButton()),
      ],
    );
  }
}
