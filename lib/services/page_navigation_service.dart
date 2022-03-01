import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageNavigationService {
  generalPageNavigation(Widget? nextScreen) {
    Get.to(nextScreen);
  }

  removePreviuosAllPageNavigation(Widget? nextScreen) {
    Get.offAll(nextScreen);
  }
}
