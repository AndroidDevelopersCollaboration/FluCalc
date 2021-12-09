import 'package:calculator/helpers/state_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorButtonWidgetLand extends ConsumerWidget {
  const CalculatorButtonWidgetLand(
      {Key? key, required this.buttonText, required this.textColor})
      : super(key: key);

  final String buttonText;
  final Color textColor;

  calculation(BuildContext context, String buttonText, String equation) {
    if (buttonText == '⌫') {
      context.read(calculatorEquation).state =
          equation.substring(0, equation.length - 1);
    } else if (buttonText == 'AC') {
      context.read(calculatorEquation).state = '0';
      context.read(equationResult).state = '0';
      if (equation == "") {
        context.read(calculatorEquation).state = '0';
      }
    } else if (buttonText == "=") {
      var mathExpression = equation;
      mathExpression = mathExpression.replaceAll('×', '*').replaceAll('÷', '/');

      try {
        Expression exp = Parser().parse(mathExpression);
        ContextModel contextModel = ContextModel();
        context.read(equationResult).state =
            equation = '${exp.evaluate(EvaluationType.REAL, contextModel)}';
      } catch (e) {
        print(e);
      }
    } else {
      if (equation == "0") {
        context.read(calculatorEquation).state = buttonText;
      } else {
        context.read(calculatorEquation).state = equation + buttonText;
      }
    }
  }

  @override
  Widget build(BuildContext context, watch) {
    final buttonColor = watch(backGroundColor).state;
    final equation = watch(calculatorEquation).state;

    return InkWell(
      onTap: () {
        buttonText == 'x'
            ? calculation(context, '*', equation)
            : calculation(context, buttonText, equation);
      },

      // context.read(calculatorEquation).state = equation + buttonText,
      child: Container(
        height: 55,
        width: 70,
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: buttonColor, borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(fontSize: 20, color: textColor),
          ),
        ),
      ),
    );
  }
}
