import 'package:flutter/material.dart';

/// A single item (preview of a Note) in the Notes list.
class PageCard extends StatelessWidget {
  const PageCard({
    Key? key,
    // this.note,
  }) : super(key: key);


  // final Note note;
  
  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }


  // @override
  // Widget build(BuildContext context) {
  //   Hero(
  //     tag: 'NoteItem${note.id}',
  //     child: DefaultTextStyle(
  //       style: kNoteTextLight,
  //       child: Container(
  //         decoration: BoxDecoration(
  //           color: note.color,
  //           borderRadius: BorderRadius.all(Radius.circular(8)),
  //           border: note.color.value == 0xFFFFFFFF
  //               ? Border.all(color: Color(0xFFDADCE0))
  //               : null,
  //         ),
  //         padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
  //         child: Column(
  //           mainAxisSize: MainAxisSize.min,
  //           crossAxisAlignment: CrossAxisAlignment.stretch,
  //           children: <Widget>[
  //             if (note.title?.isNotEmpty == true)
  //               Text(
  //                 note.title,
  //                 style: kCardTitleLight,
  //                 maxLines: 1,
  //               ),
  //             if (note.title?.isNotEmpty == true) const SizedBox(height: 14),
  //             Flexible(
  //               flex: 1,
  //               child: Text(note.content ??
  //                   ''), // wrapping using a Flexible to avoid overflow
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
  
}