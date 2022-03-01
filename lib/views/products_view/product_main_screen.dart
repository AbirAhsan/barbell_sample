import 'package:barbell/views/variable/colors.dart';
import 'package:barbell/views/variable/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProductMainScreen extends StatelessWidget {
  const ProductMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SizedBox(
        height: _height,
        width: _height,
        child: Stack(
          children: [
            AppBar(
              toolbarHeight: 120,
              backgroundColor: limeblack,
              title: Text(
                AppLocalizations.of(context)!.productScreenTitle,
                style: titleBoldStyleWithWhite,
              ),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
