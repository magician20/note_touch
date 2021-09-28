import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

///Handle state transation from ListView to GridView
@injectable
class GridviewCubit extends Cubit<bool> {
   /// `true` to show notes in a GridView, a ListView otherwise.
   /// the value can change by action bar and then this will effect our page content to show list or grid
  GridviewCubit({bool initialState = true}) : super(initialState);

  /// show grid view
  void gridOrList() => emit(!state);
}
