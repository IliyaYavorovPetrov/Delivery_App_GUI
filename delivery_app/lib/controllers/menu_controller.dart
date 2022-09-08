import 'package:flutter/material.dart';

import 'package:delivery_app/constants/style.dart';
import 'package:delivery_app/routing/routes.dart';

import 'package:get/get.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();

  var activeItem = overviewPageDisplayName.obs;
  var hoverItem = "".obs;

  bool _isActive(String itemName) => activeItem.value == itemName;
  bool _isHovering(String itemName) => hoverItem.value == itemName;

  changeActiveItemTo(String newItemName) {
    activeItem.value = newItemName;
  }

  onHover(String newItemName) {
    if (!_isActive(newItemName)) {
      hoverItem.value = newItemName;
    }
  }

  Widget _customIcon(IconData icon, String itemName) {
    if (_isActive(itemName)) {
      return Icon(
        icon,
        size: 22,
        color: cDark,
      );
    }
    return Icon(
      icon,
      color: _isHovering(itemName) ? cDark : cLightGrey,
    );
  }

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case overviewPageDisplayName:
        return _customIcon(Icons.trending_up, itemName);
      case driversPageDisplayName:
        return _customIcon(Icons.drive_eta, itemName);
      case clientsPageDisplayName:
        return _customIcon(Icons.people_alt_outlined, itemName);
      case authenticationPageDisplayName:
        return _customIcon(Icons.exit_to_app, itemName);
      default:
        return _customIcon(Icons.exit_to_app, itemName);
    }
  }
}
