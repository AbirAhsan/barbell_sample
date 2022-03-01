import 'package:get/get.dart';

class CustomAnimationController extends GetxController {
  RxBool isShowSearch = false.obs;
  RxBool isShowDropDown = true.obs;

  //<================ Show And Hide Search
  void showHideSearchAndDropDown() {
    isShowSearch.value = !isShowSearch.value;
    isShowDropDown.value = !isShowSearch.value;
  }
}
