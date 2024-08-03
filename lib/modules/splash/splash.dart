import 'dart:async';

import 'package:flutter/cupertino.dart';

import '../layout/layout_view.dart';

class SplashView extends StatefulWidget {
  static const String routname = "/";

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, LayoutView.routname);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Center(
      child: Image.asset(
        "assets/imgs/splash.png",
        fit: BoxFit.fill,
      ),
    );
  }
}
