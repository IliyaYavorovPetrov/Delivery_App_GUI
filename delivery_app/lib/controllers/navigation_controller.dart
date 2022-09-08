import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class NavigatonController extends GetxController {
  static NavigatonController instance = Get.find();

  final GlobalKey<NavigatorState> key = GlobalKey();

  Future<dynamic>? navigateTo(String routeName) {
    return key.currentState?.pushNamed(routeName);
  }

  goBack() => key.currentState?.pop();
}