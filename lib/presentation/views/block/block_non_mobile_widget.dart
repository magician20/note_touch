import 'package:flutter/material.dart';
import 'package:note_touch/presentation/views/block/block_action_attached.dart';
import 'package:note_touch/presentation/views/block/block_text_widget.dart';

import 'on_hover_non_mobile.dart';
import 'on_visibility_widget.dart';

class BlockNonMobileWidget extends StatefulWidget {
  const BlockNonMobileWidget({Key? key}) : super(key: key);

  @override
  _BlockNonMobileWidgetState createState() => _BlockNonMobileWidgetState();
}

class _BlockNonMobileWidgetState extends State<BlockNonMobileWidget> {
  // final TextEditingController _emailController = TextEditingController();
  //value represent visiblity depend on hover the row isVisible = ishovered;
  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
    return OnHoverNonMobile(builder: (ishovered) {
      return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        OnVisibilityWidget(
            isVisible: ishovered,
            child: const BlockActionAttached(
              isMobile: false,
            )),
        Container(
          constraints: const BoxConstraints(maxWidth: 4.0, maxHeight: 25.0),
        ),
        //this part will block text or block todo
        const Flexible(
          child: BlockTextWidget(),///here will change to different block
        ),
      ]);
    });
  }
}
