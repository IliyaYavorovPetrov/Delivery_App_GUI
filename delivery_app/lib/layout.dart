import 'package:delivery_app/helpers/responsive.dart';
import 'package:flutter/material.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      extendBodyBehindAppBar: true,
      body: ResponsiveWidget(
        largeScreen: Container(),
        smallScreen: Container(),
      ),
    );
  }
}