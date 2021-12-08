import 'package:calculator/helpers/colors.dart';
import 'package:calculator/helpers/sizes.dart';
import 'package:calculator/helpers/state_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';

import 'calculator_button_widget.dart';

class CalculatorButtons extends StatelessWidget {
  const CalculatorButtons({
    Key? key,
    required this.backgroundColor,
    required this.changeTextColor,
  }) : super(key: key);

  final Color backgroundColor;
  final Color changeTextColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        width: GlobalSizes.globalWidth(context, 1),
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CalculatorButtonWidget(
                    buttonText: 'AC',
                    textColor: GlobalColors.primaryGreen,
                  ),
                  CalculatorButtonWidget(
                    buttonText: '±',
                    textColor: GlobalColors.primaryGreen,
                  ),
                  CalculatorButtonWidget(
                    buttonText: '%',
                    textColor: GlobalColors.primaryGreen,
                  ),
                  CalculatorButtonWidget(
                    buttonText: '÷',
                    textColor: GlobalColors.primaryOrange,
                  ),
                ]),
            SizedBox(height: 15),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CalculatorButtonWidget(
                    buttonText: '7',
                    textColor: changeTextColor,
                  ),
                  CalculatorButtonWidget(
                    buttonText: '8',
                    textColor: changeTextColor,
                  ),
                  CalculatorButtonWidget(
                    buttonText: '9',
                    textColor: changeTextColor,
                  ),
                  CalculatorButtonWidget(
                    buttonText: 'x',
                    textColor: GlobalColors.primaryOrange,
                  ),
                ]),
            SizedBox(height: 15),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CalculatorButtonWidget(
                    buttonText: '6',
                    textColor: changeTextColor,
                  ),
                  CalculatorButtonWidget(
                    buttonText: '5',
                    textColor: changeTextColor,
                  ),
                  CalculatorButtonWidget(
                    buttonText: '4',
                    textColor: changeTextColor,
                  ),
                  CalculatorButtonWidget(
                    buttonText: '-',
                    textColor: GlobalColors.primaryOrange,
                  ),
                ]),
            SizedBox(height: 15),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CalculatorButtonWidget(
                    buttonText: '1',
                    textColor: changeTextColor,
                  ),
                  CalculatorButtonWidget(
                    buttonText: '2',
                    textColor: changeTextColor,
                  ),
                  CalculatorButtonWidget(
                    buttonText: '3',
                    textColor: changeTextColor,
                  ),
                  CalculatorButtonWidget(
                    buttonText: '+',
                    textColor: GlobalColors.primaryOrange,
                  ),
                ]),
            SizedBox(height: 15),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CalculatorButtonWidget(
                    buttonText: '',
                    textColor: changeTextColor,
                  ),
                  CalculatorButtonWidget(
                    buttonText: '0',
                    textColor: changeTextColor,
                  ),
                  CalculatorButtonWidget(
                    buttonText: '.',
                    textColor: changeTextColor,
                  ),
                  CalculatorButtonWidget(
                    buttonText: '=',
                    textColor: GlobalColors.primaryOrange,
                  ),
                ]),
          ],
        ),
      ),
    );
  }
}

