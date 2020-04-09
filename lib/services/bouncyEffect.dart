import 'package:flutter/material.dart';

class BouncyEffect extends PageRouteBuilder {
  final Widget widget;

  BouncyEffect({this.widget})
      : super(
            transitionDuration: Duration(seconds: 1),
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> setAnimation,
                Widget child) {
              animation = CurvedAnimation(
                  parent: animation, curve: Curves.elasticInOut);

              return ScaleTransition(
                alignment: Alignment.center,
                scale: animation,
                child: child,
              );
            },
            pageBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> setAnimation,
            ) {
              return widget;
            });
}
