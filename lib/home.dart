import 'package:calculator/helpers/sizes.dart';
import 'package:calculator/widgets/calculator_body.dart';
import 'package:calculator/widgets/tab_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'helpers/state_manager.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, watch, child) {
        final backGround = watch(backGroundColor).state;
        return Scaffold(
          backgroundColor: backGround,
          body: Column(
            children: [
              SizedBox(height: GlobalSizes.globalHeight(context, 0.15)),
              TabWidget(),
              CalculatorBody(),
            ],
          ),
        ); // Hello world
      },
    );
  }
}
