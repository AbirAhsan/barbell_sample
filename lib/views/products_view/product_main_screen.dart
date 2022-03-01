import 'package:barbell/views/variable/colors.dart';
import 'package:barbell/views/variable/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../controller/animation_controller.dart';
import 'search_and_dropdown_animation.dart';

class ProductMainScreen extends StatelessWidget {
  const ProductMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    CustomAnimationController customAnimationCtrl = CustomAnimationController();
    double _appToolBarSize = 120.0;
    return Scaffold(
      body: Stack(
        children: [
          AppBar(
            toolbarHeight: _appToolBarSize,
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
                height: _height - _appToolBarSize - 20,
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
                    //<====================== Search And Dropdown Animation
                    SearchAndDropDown(
                      dropDownOnTap: () {
                        showModalBottomSheet<void>(
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                  height: 200,
                                  color: white,
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        const Text('نهاية الورقة'),
                                        ElevatedButton(
                                          child:
                                              const Text('أغلق الورقة السفلية'),
                                          onPressed: () =>
                                              Navigator.pop(context),
                                        )
                                      ],
                                    ),
                                  ));
                            });
                      },
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
