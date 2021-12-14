

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:note_touch/presentation/views/block/block_mobile_widget.dart';
import 'package:note_touch/presentation/views/block/block_non_mobile_widget.dart';

///Handle creation of block widget mobile or web
class BlockWidget extends StatelessWidget {
  const BlockWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (kIsWeb == true ||
            defaultTargetPlatform == TargetPlatform.windows ||
            defaultTargetPlatform == TargetPlatform.macOS ||
            defaultTargetPlatform == TargetPlatform.linux)
        ? const BlockNonMobileWidget()
        : const BlockMobileWidget();
  }
}
