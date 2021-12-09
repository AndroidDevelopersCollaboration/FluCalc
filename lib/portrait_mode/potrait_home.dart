import 'package:calculator/helpers/sizes.dart';
import 'package:calculator/portrait_mode/calculator_body_portrait.dart';
import 'package:calculator/widgets/tab_widget.dart';
import 'package:flutter/material.dart';

class PortraitWidget extends StatelessWidget {
  const PortraitWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: GlobalSizes.globalHeight(context, 0.15)),
        TabWidget(),
        CalculatorBodyPortrait(),
      ],
    );
  }
}

