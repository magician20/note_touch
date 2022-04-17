import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class RouterPageWrapper extends StatelessWidget {
  const RouterPageWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // attaching a key to an existing widget,used here specific for the PagesList widget
    // bcause state removed when change screen size
    // final wrapper =KeyedSubtree(key:GlobalObjectKey("PageWrapper") ,child: AutoRouter()) ;
    return AutoRouter(key: GlobalObjectKey("PageWrapper"));
  }
}
