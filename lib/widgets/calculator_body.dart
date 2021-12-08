import 'package:calculator/helpers/sizes.dart';
import 'package:calculator/helpers/state_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';

import 'calculator_buttons.dart';

class CalculatorBody extends ConsumerWidget {

  String equation = '0';
  String result = '0';
  String expression = "";
  double equationFontSize = 38.0;
  double resultFontSize = 60.0;

  @override
  Widget build(BuildContext context, watch) {

    var backgroundColor = watch(tabColor).state;
    var changeTextColor = watch(textColor).state;

    var equation = watch(calculatorEquation).state;
    var result = watch(equationResult).state;

    return Flexible(
    child: Column(
      children: [
       Expanded(
         flex: 1,
         child: SingleChildScrollView(
           child: Column(
             children: [
               Container(
                 alignment: Alignment.centerRight,
                 padding: EdgeInsets.only(
                     right: 20, left: 20, top: GlobalSizes.globalHeight(context, 0.05)),
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
         ),
       ),
        CalculatorButtons(backgroundColor: backgroundColor, changeTextColor: changeTextColor)
      ],
    ),
  );
  }
}


