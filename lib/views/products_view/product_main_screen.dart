import 'package:barbell/list.dart';
import 'package:barbell/services/page_navigation_service.dart';
import 'package:barbell/views/profile/profile_screen.dart';
import 'package:barbell/views/variable/colors.dart';
import 'package:barbell/views/variable/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
              actions: [
                IconButton(
                    onPressed: () => PageNavigationService()
                        .generalPageNavigation(const ProfileScreen()),
                    icon: const Icon(
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
                                            child: const Text(
                                                'أغلق الورقة السفلية'),
                                            onPressed: () =>
                                                Navigator.pop(context),
                                          )
                                        ],
                                      ),
                                    ));
                              });
                        },
                      ),

                      //<<================== Main Category Tabbar
                      DefaultTabController(
                          length: meals.length,
                          child: Expanded(
                            child: ListView(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              children: [
                                TabBar(
                                    //  controller: scrCtrl.tabController,
                                    isScrollable: true,
                                    automaticIndicatorColorAdjustment: true,
                                    indicatorSize: TabBarIndicatorSize.tab,
                                    labelColor: white,
                                    labelStyle: normalBoldStyle,
                                    unselectedLabelColor: limeblack,
                                    indicator: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: red,
                                    ),
                                    indicatorColor: white,
                                    padding: const EdgeInsets.only(bottom: 5),
                                    //   labelPadding: EdgeInsets.only(left: 10, right: 10),

                                    tabs: meals.map<Widget>((category) {
                                      return Tab(
                                        text: category["title"],
                                      );
                                    }).toList()),
                                SizedBox(
                                  height: _height,
                                  child: TabBarView(
                                    children: meals.map<Widget>((category) {
                                      //<=============== Sub Category Tabbar Start
                                      return DefaultTabController(
                                        length:
                                            category["subcategoryList"].length,
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 50,
                                              child: TabBar(
                                                  isScrollable: true,
                                                  automaticIndicatorColorAdjustment:
                                                      true,
                                                  indicatorSize:
                                                      TabBarIndicatorSize.tab,
                                                  labelColor: white,
                                                  labelStyle:
                                                      normalRegularStyle,
                                                  unselectedLabelColor:
                                                      limeblack,
                                                  indicator: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: red,
                                                  ),
                                                  indicatorColor: white,
                                                  padding:
                                                      const EdgeInsets.only(
                                                          bottom: 5),
                                                  tabs: category[
                                                          "subcategoryList"]
                                                      .map<Widget>(
                                                          (subcategory) {
                                                    return Tab(
                                                      text: subcategory[
                                                          "subtitle"],
                                                    );
                                                  }).toList()),
                                            ),
                                            Expanded(
                                              child: TabBarView(
                                                  children: category[
                                                          "subcategoryList"]
                                                      .map<Widget>(
                                                          (subcategory) {
                                                return ListView.builder(
                                                    shrinkWrap: true,
                                                    physics:
                                                        const NeverScrollableScrollPhysics(),
                                                    itemCount: subcategory[
                                                            "productList"]
                                                        .length,
                                                    itemBuilder:
                                                        (context, index) {
                                                      return Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(5.0),
                                                        child: Card(
                                                          child: Container(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(5),
                                                            child: ListTile(
                                                              leading:
                                                                  Image.asset(
                                                                "assets/sample.png",
                                                                height: 80,
                                                                width: 80,
                                                              ),
                                                              title: Text(
                                                                subcategory[
                                                                        "productList"]
                                                                    [
                                                                    index]["name"],
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                              ),
                                                              subtitle: Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(subcategory[
                                                                              "productList"]
                                                                          [
                                                                          index]
                                                                      [
                                                                      "subname"]),
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Column(
                                                                        children: const [
                                                                          Text(
                                                                            "12",
                                                                            style:
                                                                                TextStyle(fontSize: 9.0),
                                                                          ),
                                                                          Text(
                                                                            "بروتين",
                                                                            style:
                                                                                TextStyle(fontSize: 9.0),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Column(
                                                                        children: const [
                                                                          Text(
                                                                            "13",
                                                                            style:
                                                                                TextStyle(fontSize: 9.0),
                                                                          ),
                                                                          Text(
                                                                            "بروتين",
                                                                            style:
                                                                                TextStyle(fontSize: 9.0),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Column(
                                                                        children: const [
                                                                          Text(
                                                                            "14",
                                                                            style:
                                                                                TextStyle(fontSize: 9.0),
                                                                          ),
                                                                          Text(
                                                                            "بروتين",
                                                                            style:
                                                                                TextStyle(fontSize: 9.0),
                                                                          ),
                                                                        ],
                                                                      )
                                                                    ],
                                                                  )
                                                                ],
                                                              ),
                                                              isThreeLine: true,
                                                              trailing: Column(
                                                                children: const [
                                                                  Card(
                                                                    color:
                                                                        limeblack,
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              5.0),
                                                                      child:
                                                                          Text(
                                                                        "320",
                                                                        style: TextStyle(
                                                                            color:
                                                                                white,
                                                                            fontSize:
                                                                                12),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Icon(
                                                                    Icons
                                                                        .add_box_rounded,
                                                                    color: red,
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    });
                                              }).toList()),
                                            )
                                          ],
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                )
                              ],
                            ),
                          ))
                    ],
                  )),
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        floatingActionButton: FloatingActionButton(
          backgroundColor: red,
          onPressed: () {
            showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                      height: 200,
                      color: white,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const Text('نهاية الورقة'),
                            ElevatedButton(
                              child: const Text('أغلق الورقة السفلية'),
                              onPressed: () => Navigator.pop(context),
                            )
                          ],
                        ),
                      ));
                });
          },
          child: const Icon(Icons.filter_alt_outlined),
        ));
  }
}
