import 'package:barbell/services/page_navigation_service.dart';
import 'package:barbell/views/products_view/product_main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.homeTitle,
        ),
      ),
      body: SizedBox(
        width: _width,
        height: _height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(AppLocalizations.of(context)!.buttonDescription),
            ElevatedButton(
              onPressed: () => PageNavigationService().generalPageNavigation(
                const ProductMainScreen(),
              ),
              child: Text(
                AppLocalizations.of(context)!.buttonName,
              ),
            )
          ],
        ),
      ),
    );
  }
}
