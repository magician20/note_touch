import 'package:flutter/material.dart';
import 'package:note_touch/presentation/views/block/block_action_attached.dart';
import 'package:note_touch/presentation/views/block/block_text_widget.dart';
import 'package:note_touch/presentation/views/block/on_hover_mobile.dart';
import 'package:note_touch/presentation/views/block/on_visibility_widget.dart';

class BlockMobileWidget extends StatefulWidget {
  const BlockMobileWidget({Key? key}) : super(key: key);

  @override
  _BlockMobileWidgetState createState() => _BlockMobileWidgetState();
}

class _BlockMobileWidgetState extends State<BlockMobileWidget> {
  // final TextEditingController _emailController = TextEditingController();
  //value represent visiblity depend on hover the row isVisible = ishovered;
  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
    return OnHoverMobile(
      builder: (ishovered) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start, 
        children: [
        OnVisibilityWidget(
            isVisible: ishovered,
            child: const BlockActionAttached(
              isMobile: true,
            )),
        const Flexible(
          child: BlockTextWidget(),///here will change to different block
        ),
      ]);
    });
  }
}
