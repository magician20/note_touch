import 'package:flutter/material.dart';


/// Grid view of [Note]s.
class PagesGrid extends StatelessWidget {
  // final List<Note> notes;
  // final void Function(Note) onTap;

  const PagesGrid({
    Key? key,
   // @required this.notes,
   // this.onTap,
  }) : super(key: key);

  static PagesGrid create({
    Key? key,
    // @required List<Note> notes,
    // void Function(Note) onTap,
  }) => PagesGrid(
    key: key,
    // notes: notes,
    // onTap: onTap,
  );

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }

  // @override
  // Widget build(BuildContext context) => SliverPadding(
  //   padding: const EdgeInsets.symmetric(horizontal: 10),
  //   sliver: SliverGrid(
  //     gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
  //       maxCrossAxisExtent: 200.0,
  //       mainAxisSpacing: 10.0,
  //       crossAxisSpacing: 10.0,
  //       childAspectRatio: 1 / 1.2,
  //     ),
  //     delegate: SliverChildBuilderDelegate(
  //       (BuildContext context, int index) => _noteItem(context, notes[index]),
  //       childCount: notes.length,
  //     ),
  //   ),
  // );

  // Widget _noteItem(BuildContext context, Note note) => InkWell(
  //   onTap: () => onTap?.call(note),
  //   child: NoteItem(note: note),
  // );
  
}
