import 'package:delivery_app/helpers/responsive.dart';
import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  final GlobalKey<ScaffoldState> globalKey = GlobalKey();

  Layout({super.key});

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