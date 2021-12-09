import 'package:calculator/helpers/sizes.dart';
import 'package:calculator/helpers/state_manager.dart';
import 'package:calculator/landscape_mode/tab_widget_landscape.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'calculator_body_landscape.dart';

class LandscapeWidget extends ConsumerWidget {

  double equationFontSize = 25.0;
  double resultFontSize = 35.0;

  @override
  Widget build(BuildContext context, watch) {

    var changeTextColor = watch(textColor).state;

    var equation = watch(calculatorEquation).state;
    var result = watch(equationResult).state;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: GlobalSizes.globalHeight(context, 0.05)),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TabWidgetLandscape(),
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        alignment: Alignment.centerRight,
                        padding: const EdgeInsets.only(
                            right: 20, left: 20),
                        child: Text(
                          equation,
                          style: TextStyle(
                              fontSize: equationFontSize, color: changeTextColor),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        padding: EdgeInsets.only(
                          right: 20,
                          left: 20,
                          top: GlobalSizes.globalHeight(context, 0.03),
                          bottom: GlobalSizes.globalHeight(context, 0.16),
                        ),
                        child: Text(
                          result,
                          style: TextStyle(
                              fontSize: resultFontSize,
                              color: changeTextColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        CalculatorBodyLandScape()
      ],
    );
  }
}

