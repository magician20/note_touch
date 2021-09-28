import 'package:flutter/material.dart';
import 'package:note_touch/presentation/views/pages/page_card_widget.dart';

/// ListView for notes
class PagesList extends StatelessWidget {
    final List<PageCard> notes;//this will change to notes data

  const PagesList({
    Key? key,
    required this.notes,
  }) : super(key: key);

  // static PagesList create({
  //   Key? key,
  //   //@required List<Note> notes,
  // }) => PagesList(
  //   key: key,
  //  // notes: notes,
  // );

  @override
  Widget build(BuildContext context) {
     return ListView.builder(
       itemCount: notes.length,
       itemBuilder: (context,i){
         return notes[i];//new PageCard will be create here and pass the ID to show on the url
       }
       );
  }
  
}
