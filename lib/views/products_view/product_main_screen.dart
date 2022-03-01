import 'package:flutter/material.dart';

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
        child: Column(
          children: [
            Container(
              width: _width,
              child: Row(
                children: [],
              ),
            )
          ],
        ),
      ),
    );
  }
}
