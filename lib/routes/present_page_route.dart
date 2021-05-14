//
// ********************************
//
// @author liqi
// @time 5/14/21
//
// ********************************
//

import 'package:flutter/material.dart';

class PresentPageRoute extends PageRouteBuilder{
  PresentPageRoute(this.widget)
      : super(
            transitionDuration: Duration(milliseconds: 250),
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) {
              return widget;
            },
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
                Widget child) {
              return SlideTransition(
                position: Tween<Offset>(begin: Offset(0, 1), end: Offset(0, 0))
                    .animate(CurvedAnimation(
                        parent: animation, curve: Curves.ease)),
                child: child,
              );
            });

  final Widget widget;
}
