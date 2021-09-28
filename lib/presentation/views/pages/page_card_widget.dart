import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:note_touch/presentation/shared/style.dart';
import 'package:note_touch/presentation/routes/router.gr.dart';

/// A single item (preview of a Note) in the Notes list.
class PageCard extends StatefulWidget {
  //final Note note;
  final int index; //this will be removed and will use the Note ID

  const PageCard({
    Key? key,
    // required this.note,
    required this.index,
  }) : super(key: key);

  @override
  State<PageCard> createState() => _PageCardState();
}

class _PageCardState extends State<PageCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          // side: BorderSide(), //this also can change depend on clicking
        ),
        // color: , //depend on note color and also will be update when color event trigger
        child: InkWell(
          onTap: () {
            // web will be dialog,else screen  ( context.navigateTo(HomeRoute(children: [NotesRoute()])); )
            // AutoRouter.of(context).innerRouterOf<StackRouter>(NotesRoute.name)!.navigate(PageFormRoute(id: index));
            context.tabsRouter
              ..setActiveIndex(0)
              ..innerRouterOf<StackRouter>(NotesRoute.name)!//HomeFormWidget
                  .push(PageFormRoute(id: widget.index));
          },
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                //crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Title",
                    style: kCardTitleLight,
                    maxLines: 1,
                  ),
                  Flexible(
                      flex: 1,
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,",
                        overflow: TextOverflow.ellipsis,
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
