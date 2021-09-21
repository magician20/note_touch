import 'package:flutter/material.dart';

/// ListView for notes
class PagesList extends StatelessWidget {
  // final List<Note> notes;
  // final void Function(Note) onTap;

  const PagesList({
    Key? key,
    //@required this.notes,
   // this.onTap,
  }) : super(key: key);

  static PagesList create({
    Key? key,
    //@required List<Note> notes,
    //void Function(Note) onTap,
  }) => PagesList(
    key: key,
   // notes: notes,
   // onTap: onTap,
  );

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }

  // @override
  // Widget build(BuildContext context) {
  //    SliverPadding(
  //   padding: const EdgeInsets.symmetric(horizontal: 10),
  //   sliver: SliverList(
  //     delegate: SliverChildListDelegate(
  //       notes.flatMapIndexed((i, note) => <Widget>[
  //         InkWell(
  //           onTap: () => onTap?.call(note),
  //           child: NoteItem(note: note),
  //         ),
  //         if (i < notes.length - 1) const SizedBox(height: 10),
  //       ]).asList(),
  //     ),
  //   ),
  // );
  // }
  // 
}
