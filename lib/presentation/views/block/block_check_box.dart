import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:note_touch/presentation/controllers/cubit/check_box_cubit.dart';

class BlockCheckBox extends StatefulWidget {
  const BlockCheckBox({Key? key}) : super(key: key);

  @override
  _BlockCheckBoxState createState() => _BlockCheckBoxState();
}

class _BlockCheckBoxState extends State<BlockCheckBox> {
  // bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
        MaterialState.selected,
      };

      if (states.any(interactiveStates.contains)) {
        return const Color.fromRGBO(46,170,220,1);
      }
      return  const Color.fromRGBO(55,53,47,1);
    }

    return BlocBuilder<CheckBoxCubit, bool>(
      builder: (context, state) {
        return Checkbox(
          checkColor: Colors.white,
          fillColor: MaterialStateProperty.resolveWith(getColor),
          value: state,
          onChanged:(value) => context.read<CheckBoxCubit>().isCheckedBox(),
        );
      },
    );
  }
}
