import 'package:flutter/material.dart';

import 'package:delivery_app/routing/routes.dart';

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case overviewPageRoute:
      return _getPageRoute(Container());
    case driversPageRoute:
      return _getPageRoute(Container());
    case clientsPageRoute:
      return _getPageRoute(Container());
    default:
      return _getPageRoute(Container());
  }
}
