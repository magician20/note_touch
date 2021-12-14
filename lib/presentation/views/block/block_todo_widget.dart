import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_touch/presentation/controllers/cubit/check_box_cubit.dart';
import 'package:note_touch/presentation/views/block/block_check_box.dart';

class BlockTodoWidget extends StatefulWidget {

  const BlockTodoWidget({
    Key? key,
  }) : super(key: key);

  @override
  _BlockTodoWidgetState createState() => _BlockTodoWidgetState();
}

class _BlockTodoWidgetState extends State<BlockTodoWidget> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return BlocProvider(
      create: (context) => CheckBoxCubit(),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        const BlockCheckBox(),
        BlocBuilder<CheckBoxCubit, bool>(
          builder: (context, state) {
            return Flexible(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: height, //when it reach the max it will use scroll
                  maxWidth: width,
                ),
                child: TextField(
                  enabled: !state, //state start with false so we had to use !
                  style: state
                      ? const TextStyle(
                          /*color:  Color.fromRGBO(55, 53, 47, 1),*/ decoration:
                              TextDecoration.lineThrough)
                      : const TextStyle(
                          /*color:  Color.fromRGBO(55, 53, 47, 1)*/),
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  minLines: 1,
                  decoration: const InputDecoration(
                    fillColor: Colors.white,
                   // filled: true,
                    hintText: "Type '/' for commands ",
                    border: InputBorder.none,
                  ),
                ),
              ),
            );
          },
        ),
      ]),
    );
  }
}
