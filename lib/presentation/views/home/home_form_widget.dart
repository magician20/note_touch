import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_touch/presentation/controllers/cubit/gridview_cubit.dart';
import 'package:note_touch/presentation/views/pages/empty_page_widget.dart';
import 'package:note_touch/presentation/views/pages/page_card_widget.dart';
import 'package:note_touch/presentation/views/pages/pages_grid_widget.dart';
import 'package:note_touch/presentation/views/pages/pages_list_widget.dart';
import 'package:note_touch/presentation/widgets/floating_action_bar.dart';

class HomeFormWidget extends StatefulWidget {
  ///this key handle drawer state open/close
  final GlobalKey<ScaffoldState>? scaffoldKey;

  const HomeFormWidget({Key? key, this.scaffoldKey}) : super(key: key);

  @override
  _HomeFormWidgetState createState() => _HomeFormWidgetState();
}

class _HomeFormWidgetState extends State<HomeFormWidget> {
  @override
  Widget build(BuildContext context) {
    List<PageCard> notesList = [
      PageCard(
        index: 0,
      ),
      PageCard(
        index: 1,
      ),
      PageCard(
        index: 2,
      ),
      PageCard(
        index: 3,
      ),
      PageCard(
        index: 4,
      ),
      PageCard(
        index: 5,
      ),
      PageCard(
        index: 6,
      ),
      PageCard(
        index: 7,
      ),
    ];

    return Container(
      margin: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: BlocProvider(
        create: (context) => GridviewCubit(),
        //use state to check if it's true will show grid layout, false list layout
        //then pass the list values
        child: FloatingActionBar(
          scaffoldKey: widget.scaffoldKey,//null value can't open and close
          child: notesList.isEmpty
              ? EmptyPageWidget()
              : Container(
                  width: double.maxFinite,
                  child: BlocBuilder<GridviewCubit, bool>(
                    builder: (context, state) {
                      return state
                          ? PagesGrid(
                              notes: notesList,
                            )
                          : PagesList(
                              notes: notesList,
                            );
                    },
                  )),
        ),
      ),
    );
  }

  /// Need to check if list or grid view (handle by Cubit) & if there's data or empty before show the content (handle by bloc & events)
  /// A grid/list view to display notes
  /// state are divided to `Pinned` and `Others` when there's no filter,
  /// and a blank view will be rendered, if no note found.

}
