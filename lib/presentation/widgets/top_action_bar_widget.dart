import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_touch/presentation/controllers/cubit/gridview_cubit.dart';
import 'package:note_touch/presentation/shared/app_icons.dart';
import 'package:note_touch/presentation/shared/responsive.dart';
import 'package:note_touch/presentation/widgets/avater_widget.dart';

/// a widget create silver appBar actions
class TopActionBar extends StatefulWidget {
  final GlobalKey<ScaffoldState>? scaffoldKey;

  TopActionBar({required this.scaffoldKey, Key? key}) : super(key: key);

  @override
  _TopActionBarState createState() => _TopActionBarState();
}

class _TopActionBarState extends State<TopActionBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxWidth: double.infinity, //DEFINE THE LINIT OF CONTAINER
      ),
      //padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        elevation: 3,
        child: Container(
         // padding: EdgeInsets.symmetric(vertical: 5.0),
          child: Row(
            children: <Widget>[
              const SizedBox(width: 20),
              if (!Responsive.isShowDrawerSize(context))
                InkWell(
                    child:
                        Icon(Icons.menu, color: Theme.of(context).primaryColor),
                    onTap: () {
                      print("clicked");
                      //can't open it for tables or screen size 1/2 desktop
                      if (!widget.scaffoldKey!.currentState!.isDrawerOpen) {
                        widget.scaffoldKey!.currentState?.openDrawer();
                      }
                    }),
              const SizedBox(width: 16),
              //this will be replace with search
              const Expanded(
                child: Text(
                  'Search your notes',
                  softWrap: false,
                  style: TextStyle(
                    color: Color(0xFF61656A),
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              BlocBuilder<GridviewCubit, bool>(
                builder: (context, state) {
                  return InkWell(
                    child: Icon(state ? view_grid : view_list,
                        color: Theme.of(context).primaryColor),
                   // `true` to show notes in a GridView, a ListView otherwise.
                    onTap: () => context.read<GridviewCubit>().gridOrList() ,
                  );
                },
              ),
              const SizedBox(width: 18),
              AvatarWidget(),
              const SizedBox(width: 10),
            ],
          ),
        ),
      ),
    );
  }
}
