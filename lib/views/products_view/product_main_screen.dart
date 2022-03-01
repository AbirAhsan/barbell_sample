import 'package:barbell/views/variable/colors.dart';
import 'package:barbell/views/variable/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../controller/animation_controller.dart';

class ProductMainScreen extends StatelessWidget {
  const ProductMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    CustomAnimationController customAnimationCtrl = CustomAnimationController();

    return Scaffold(
      body: Stack(
        children: [
          AppBar(
            toolbarHeight: 120,
            backgroundColor: limeblack,
            title: Text(
              AppLocalizations.of(context)!.productScreenTitle,
              style: titleBoldStyleWithWhite,
            ),
            actions: const [
              IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.apple,
                    color: white,
                  )),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                height: _height - 140,
                width: _width,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: offWhite,
                  border: Border.all(),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(
                      30.0,
                    ),
                    topRight: Radius.circular(
                      30.0,
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 60,
                      width: _width,
                      child: Stack(
                        fit: StackFit.loose,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Obx(
                              //<=========================== For Search Icon
                              () => AnimatedContainer(
                                duration: const Duration(seconds: 1),
                                width: customAnimationCtrl.isShowSearch.value
                                    ? _width - 120
                                    : 56,
                                height: 56,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        customAnimationCtrl.isShowSearch.value
                                            ? 32
                                            : 8.0),
                                    color:
                                        customAnimationCtrl.isShowSearch.value
                                            ? grey
                                            : limeblack,
                                    boxShadow: kElevationToShadow[5]),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: customAnimationCtrl
                                              .isShowSearch.value
                                          ? TextFormField(
                                              decoration: InputDecoration(
                                                contentPadding:
                                                    const EdgeInsets.only(
                                                        right: 5.0, left: 5.0),
                                                border: InputBorder.none,
                                                hintText: AppLocalizations.of(
                                                        context)!
                                                    .searchIcon,
                                              ),
                                            )
                                          : Container(),
                                    ),
                                    AnimatedContainer(
                                      duration: const Duration(seconds: 1),
                                      child: Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: IconButton(
                                          icon: Icon(
                                            Icons.search,
                                            size: 32,
                                            color: customAnimationCtrl
                                                    .isShowSearch.value
                                                ? limeblack
                                                : white,
                                          ),
                                          onPressed: () => customAnimationCtrl
                                              .showHideSearchAndDropDown(),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Obx(
                              //<================================= For DropDownIcon
                              () => AnimatedContainer(
                                duration: const Duration(seconds: 1),
                                width: customAnimationCtrl.isShowDropDown.value
                                    ? _width - 120
                                    : 56,
                                height: 56,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        customAnimationCtrl.isShowDropDown.value
                                            ? 32
                                            : 8.0),
                                    color:
                                        customAnimationCtrl.isShowDropDown.value
                                            ? grey
                                            : limeblack,
                                    boxShadow: kElevationToShadow[5]),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    AnimatedContainer(
                                      duration: const Duration(seconds: 1),
                                      child: Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: IconButton(
                                          icon: Icon(
                                            Icons.gif_box_outlined,
                                            size: 32,
                                            color: customAnimationCtrl
                                                    .isShowDropDown.value
                                                ? limeblack
                                                : white,
                                          ),
                                          onPressed: () => customAnimationCtrl
                                              .showHideSearchAndDropDown(),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: customAnimationCtrl
                                              .isShowDropDown.value
                                          ? TextFormField(
                                              readOnly: true,
                                              decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  hintText: AppLocalizations.of(
                                                          context)!
                                                      .dropdownButton,
                                                  suffixIcon: const Icon(Icons
                                                      .arrow_drop_down_circle_outlined)),
                                            )
                                          : Container(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
