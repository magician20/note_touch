import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_touch/application/auth/auth_bloc.dart';
import 'package:note_touch/presentation/controllers/cubit/gridview_cubit.dart';
import 'package:note_touch/presentation/widgets/top_action_bar_widget.dart';

///a widget that hold page content
class FloatingActionBar extends StatefulWidget {
  ///this key handle drawer state open/close
  final GlobalKey<ScaffoldState>? scaffoldKey;

  ///it's a Page that can be Silver List or Grid
  final Widget? child;

  FloatingActionBar({
    Key? key,
    required this.scaffoldKey,
    required this.child,
  }) : super(key: key);

  @override
  _FloatingActionBarState createState() => _FloatingActionBarState();
}

class _FloatingActionBarState extends State<FloatingActionBar> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GridviewCubit(),
      child: BlocProvider.value(
        value: BlocProvider.of<AuthBloc>(context),
        child: CustomScrollView(
          slivers: <Widget>[
            //appBar
            SliverAppBar(
              floating: true,
              snap: true,
              title: TopActionBar(scaffoldKey: widget.scaffoldKey),
              automaticallyImplyLeading: false,
              centerTitle: true,
              titleSpacing: 0,
              backgroundColor: Colors.transparent,
              elevation: 0,
              //  leading: const AutoBackButton(),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              //a Page Content and Must be silver render
              child: widget.child!,
            )
          ],
        ),
      ),
    );
  }
}
