import 'package:flutter/material.dart';

import '../variable/colors.dart';
import '../variable/text_style.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    double _appToolBarSize = 120.0;
    return Scaffold(
      body: Stack(children: [
        AppBar(
          toolbarHeight: _appToolBarSize,
          backgroundColor: limeblack,
          title: Text(
            AppLocalizations.of(context)!.profileTitle,
            style: titleBoldStyleWithWhite,
          ),
          actions: const [
            IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.refresh,
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
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //<======== Name And Gender

                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.name,
                          style: normalBoldStyle,
                        ),
                        SizedBox(
                          child: Row(
                            children: [
                              const Icon(
                                Icons.male,
                                color: red,
                              ),
                              Text(
                                AppLocalizations.of(context)!.gender,
                                style: const TextStyle(color: red),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  //<========= Weight , Height
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              AppLocalizations.of(context)!.weight,
                            ),
                            const Text(
                              "80kg",
                              style: normalBoldStyle,
                            )
                          ],
                        ),
                        Container(
                          height: 40,
                          width: 1,
                          color: grey,
                        ),
                        Column(
                          children: [
                            Text(
                              AppLocalizations.of(context)!.height,
                            ),
                            const Text(
                              "175cm",
                              style: normalBoldStyle,
                            )
                          ],
                        ),
                        Container(
                          height: 40,
                          width: 1,
                          color: grey,
                        ),
                        Column(
                          children: [
                            Text(
                              AppLocalizations.of(context)!.age,
                            ),
                            const Text(
                              "21y",
                              style: normalBoldStyle,
                            )
                          ],
                        ),
                        Container(
                          height: 40,
                          width: 1,
                          color: grey,
                        ),
                        Column(
                          children: [
                            Text(
                              AppLocalizations.of(context)!.mobile,
                            ),
                            const Text(
                              "90830840342",
                              style: normalBoldStyle,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //<========= Package Date
                  SizedBox(
                    height: 100,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 80,
                            padding: const EdgeInsets.all(15),
                            decoration: const BoxDecoration(
                                color: grey,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      AppLocalizations.of(context)!.startDate,
                                    ),
                                    const Text("01/12/2020")
                                  ],
                                ),
                                Container(
                                  height: 40,
                                  width: 1,
                                  color: limeblack,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      AppLocalizations.of(context)!.endDate,
                                    ),
                                    const Text("01/12/2021")
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.red[100],
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: Text(
                              AppLocalizations.of(context)!.anualPackage,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: red,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //<========= Common
                  Text(
                    AppLocalizations.of(context)!.commonGoal,
                    style: normalBoldStyle,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: red,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5))),
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.all(10.0),
                        child: Text(
                          AppLocalizations.of(context)!.overWeight,
                          style: const TextStyle(fontSize: 20, color: red),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: grey,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5))),
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.all(10.0),
                        child: Text(
                          AppLocalizations.of(context)!.weightLoss,
                          style: const TextStyle(fontSize: 20),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: grey,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5))),
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.all(10.0),
                        child: Text(
                          AppLocalizations.of(context)!.weightStability,
                          style: const TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //<========= Location
                  Text(
                    AppLocalizations.of(context)!.exercizeLocation,
                    style: normalBoldStyle,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: red,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5))),
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.home_filled,
                              color: red,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              AppLocalizations.of(context)!.home,
                              style: const TextStyle(fontSize: 22, color: red),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: grey,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5))),
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            const Icon(Icons.sports_gymnastics),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              AppLocalizations.of(context)!.gym,
                              style: TextStyle(
                                fontSize: 22,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: red,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5))),
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.all(15.0),
                          child: Text(
                            AppLocalizations.of(context)!.schedule,
                            style: const TextStyle(
                              color: Colors.red,
                              fontSize: 22,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: red,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5))),
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.all(15.0),
                          child: Text(
                            AppLocalizations.of(context)!.eatingTable,
                            style: const TextStyle(
                              fontSize: 22,
                              color: Colors.red,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
