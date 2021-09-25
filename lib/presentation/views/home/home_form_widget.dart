import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_touch/presentation/controllers/cubit/gridview_cubit.dart';
import 'package:note_touch/presentation/views/pages/page_card_widget.dart';
import 'package:note_touch/presentation/views/pages/pages_list_widget.dart';

class HomeFormWidget extends StatefulWidget {
  @override
  _HomeFormWidgetState createState() => _HomeFormWidgetState();
}

class _HomeFormWidgetState extends State<HomeFormWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.cyan[100], child: PageCard());
    // var list = [new PageCard()];
    // return BlocBuilder<GridviewCubit, bool>(
    //   builder: (context, state) {
    //     //use state to check if it's true will show grid layout, false list layout
    //     //then pass the list values
    //     return Container(
    //         width: double.maxFinite,
    //         child: PagesList(
    //           notes: list,
    //         ));
    //   },
    // );
  }

  /// Need to check if list or grid view (handle by Cubit) & if there's data or empty before show the content (handle by bloc & events)
  /// A grid/list view to display notes
  /// state are divided to `Pinned` and `Others` when there's no filter,
  /// and a blank view will be rendered, if no note found.

}
