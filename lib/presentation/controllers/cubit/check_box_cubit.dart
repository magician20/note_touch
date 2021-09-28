import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class CheckBoxCubit extends Cubit<bool> {

  CheckBoxCubit({bool initialState = false}) : super(initialState);

  /// Checked or unCheck
  void isCheckedBox() => emit(!state);
}
