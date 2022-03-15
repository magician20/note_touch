import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:note_touch/presentation/routes/router.gr.dart';

class PageForm extends StatefulWidget {
  ///Note id
  final int id;
  PageForm({
    Key? key,
    @PathParam('id') required this.id,
  }) : super(key: key);

  @override
  _PageFormState createState() => _PageFormState();
}

class _PageFormState extends State<PageForm> {
  @override
  Widget build(BuildContext context) {
    var x = widget.id;
    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: Scaffold(
        body: Container(
            color: Colors.blueGrey[100],
            child: Center(
                child: Column(
              children: [
                IconButton(
                  icon: const BackButtonIcon(),
                  tooltip: MaterialLocalizations.of(context).backButtonTooltip,
                  onPressed: () {
                    //AutoRouter.innerRouterOf(context, PageFormRoute.name)!.pop();//not work
                    // context.tabsRouter..setActiveIndex(0)..innerRouterOf<StackRouter>(NotesRoute.name)!.pop();
                     context.tabsRouter..setActiveIndex(0)..innerRouterOf<StackRouter>(NotesRoute.name)!.navigate(NotesRoute());
                    //context.tabsRouter..setActiveIndex(0)..innerRouterOf<StackRouter>(NotesRoute.name)!.removeLast();
                     
                    },
                ),
                Text('Note Page {$x}')
              ],
            ))),
      ),
    );
  }
}
