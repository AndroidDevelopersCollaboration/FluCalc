import 'package:calculator/helpers/colors.dart';
import 'package:calculator/helpers/sizes.dart';
import 'package:calculator/helpers/state_manager.dart';
import 'package:calculator/widgets/calculator_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';

import 'calculator_button_widget_land.dart';

class CalculatorBodyLandScape extends ConsumerWidget {

  double equationFontSize = 38.0;
  double resultFontSize = 60.0;

  @override
  Widget build(BuildContext context, watch) {

    var backgroundColor = watch(tabColor).state;
    var changeTextColor = watch(textColor).state;

    return Expanded(
      flex: 2,
      child: Container(
        width: GlobalSizes.globalWidth(context, 1),
        padding: EdgeInsets.symmetric(vertical: 25, horizontal: 60),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CalculatorButtonWidgetLand(
                          buttonText: '00',
                          textColor: changeTextColor
                        ),
                        CalculatorButtonWidgetLand(
                          buttonText: '7',
                         textColor: changeTextColor
                        ),
                        CalculatorButtonWidgetLand(
                          buttonText: '8',
                          textColor: changeTextColor
                        ),
                        CalculatorButtonWidgetLand(
                          buttonText: '9',
                            textColor: changeTextColor
                        ),
                        CalculatorButtonWidgetLand(
                          buttonText: '(',
                          textColor: changeTextColor
                        ),
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CalculatorButtonWidgetLand(
                          buttonText: '0',
                          textColor: changeTextColor
                        ),
                        CalculatorButtonWidgetLand(
                          buttonText: '4',
                         textColor: changeTextColor
                        ),
                        CalculatorButtonWidgetLand(
                          buttonText: '5',
                          textColor: changeTextColor
                        ),
                        CalculatorButtonWidgetLand(
                          buttonText: '6',
                            textColor: changeTextColor
                        ),
                        CalculatorButtonWidgetLand(
                          buttonText: ')',
                          textColor: changeTextColor
                        ),
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CalculatorButtonWidgetLand(
                            buttonText: '⌫',
                          textColor: changeTextColor
                        ),
                        CalculatorButtonWidgetLand(
                          buttonText: '1',
                         textColor: changeTextColor
                        ),
                        CalculatorButtonWidgetLand(
                          buttonText: '2',
                          textColor: changeTextColor
                        ),
                        CalculatorButtonWidgetLand(
                          buttonText: '3',
                            textColor: changeTextColor
                        ),
                        CalculatorButtonWidgetLand(
                          buttonText: '.',
                          textColor: changeTextColor
                        ),
                      ]),
                ],
              ),
            ),
            SizedBox(width: 30),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CalculatorButtonWidgetLand(
                          buttonText: '±',
                          textColor: GlobalColors.primaryGreen,
                        ),
                        CalculatorButtonWidgetLand(
                          buttonText: '%',
                          textColor: GlobalColors.primaryGreen,
                        ),
                        CalculatorButtonWidgetLand(
                          buttonText: 'AC',
                          textColor: GlobalColors.primaryGreen,
                        ),
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CalculatorButtonWidgetLand(
                          buttonText: '÷',
                          textColor: GlobalColors.primaryOrange,
                        ),
                        CalculatorButtonWidgetLand(
                          buttonText: 'x',
                          textColor: GlobalColors.primaryOrange,
                        ),
                        CalculatorButtonWidgetLand(
                          buttonText: '+',
                          textColor: GlobalColors.primaryOrange,
                        ),
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CalculatorButtonWidgetLand(
                          buttonText: '-',
                          textColor: GlobalColors.primaryOrange,
                        ),
                        CalculatorButtonWidgetLand(
                          buttonText: '=',
                          textColor: GlobalColors.primaryOrange,
                        ),
                      ]),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}




