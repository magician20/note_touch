import 'package:flutter/material.dart';
import 'package:note_touch/presentation/views/pages/page_card_widget.dart';

/// Grid view of [Note]s.
class PagesGrid extends StatelessWidget {
  final List<PageCard> notes;

  const PagesGrid({
    Key? key,
    required this.notes,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: notes.length,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 1/1.2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0),
      itemBuilder: (context, index) {
       //new PageCard will be create here and pass the ID to show on the url 
        return notes[index]; 
      },
    );
  }
}
