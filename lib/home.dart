import 'package:calculator/portrait_mode/potrait_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';

import 'helpers/state_manager.dart';
import 'landscape_mode/landscape_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, watch, child) {
        final backGround = watch(backGroundColor).state;
        return Scaffold(
          backgroundColor: backGround,
          body: OrientationBuilder(
            builder: (context, orientation) =>
                orientation == Orientation.portrait
                    ? PortraitWidget()
                    : LandscapeWidget(),
          ),
        ); // Hello world
      },
    );
  }
}

