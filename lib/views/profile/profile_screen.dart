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
            AppLocalizations.of(context)!.productScreenTitle,
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
      ]),
    );
  }
}
