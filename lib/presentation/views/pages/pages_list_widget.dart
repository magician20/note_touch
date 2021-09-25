import 'package:flutter/material.dart';
import 'package:note_touch/presentation/views/pages/page_card_widget.dart';

/// ListView for notes
class PagesList extends StatelessWidget {
  // final List<Note> notes;
  // final void Function(Note) onTap;
    final List<PageCard> notes;

  const PagesList({
    Key? key,
    required this.notes,
   // this.onTap,
  }) : super(key: key);

  // static PagesList create({
  //   Key? key,
  //   //@required List<Note> notes,
  //   //void Function(Note) onTap,
  // }) => PagesList(
  //   key: key,
  //  // notes: notes,
  //  // onTap: onTap,
  // );

  @override
  Widget build(BuildContext context) {
     return SliverPadding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    sliver: SliverList(
      delegate: SliverChildListDelegate(notes),
    ),
  );
  }
  
}
