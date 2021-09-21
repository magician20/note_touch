import 'package:flutter/material.dart';
import 'package:note_touch/presentation/views/pages/empty_page_widget.dart';


class HomeFormWidget extends StatefulWidget {
  @override
  _HomeFormWidgetState createState() => _HomeFormWidgetState();
}

class _HomeFormWidgetState extends State<HomeFormWidget> {
   
  @override
  Widget build(BuildContext context) {
    return _buildNotesView();
  }

  /// Need to check if list or grid view (handle by Cubit) & if there's data or empty before show the content (handle by bloc & events)
  /// A grid/list view to display notes
  /// state are divided to `Pinned` and `Others` when there's no filter,
  /// and a blank view will be rendered, if no note found.
  Widget _buildNotesView( ) {
      return EmptyPageWidget();

  }

  _partitionNotes() {
        // TODO: implement _partitionNotes
  }
  //   /// Partition the note list by the pinned state
  // Tuple2<List<Note>, List<Note>> _partitionNotes(List<Note> notes) {
  //   if (notes?.isNotEmpty != true) {
  //     return Tuple2([], []);
  //   }

  //   final indexUnpinned = notes?.indexWhere((n) => !n.pinned);
  //   return indexUnpinned > -1
  //     ? Tuple2(notes.sublist(0, indexUnpinned), notes.sublist(indexUnpinned))
  //     : Tuple2(notes, []);
  // }

  /// Callback on a single note clicked
  void _onNoteTap() async {
    // TODO: implement _onNoteTap
  }
}
