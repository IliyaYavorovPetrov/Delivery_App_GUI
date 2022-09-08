import 'package:flutter/cupertino.dart';

import 'package:delivery_app/constants/controllers.dart';
import 'package:delivery_app/routing/router.dart';
import 'package:delivery_app/routing/routes.dart';

Navigator localNavigator() => Navigator(
  key: navigationController.key,
  onGenerateRoute: generateRoute,
  initialRoute: overviewPageRoute,
);
