import 'package:calculator/helpers/state_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:flutter_svg/svg.dart';

import '../helpers/colors.dart';
import '../helpers/sizes.dart';

class TabWidget extends ConsumerWidget {
  const TabWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, watch) {
    var selectedTabColor = watch(tabColor).state;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      width: GlobalSizes.globalWidth(context, 0.35),
      decoration: BoxDecoration(
          color: selectedTabColor,
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          ThemeSelector(
            widgetPosition: 0,
            imageLightTheme: 'day_icon_light.svg',
            imageDarkTheme: 'day_icon_dark.svg',
          ),
          ThemeSelector(
            widgetPosition: 1,
            imageLightTheme: 'night_icon_white.svg',
            imageDarkTheme: 'night_icon_dark.svg',
            height: 25,
          ),
        ],
      ),
    );
  }
}

class ThemeSelector extends ConsumerWidget {
  const ThemeSelector(
      {Key? key,
      required this.widgetPosition,
      required this.imageDarkTheme,
      required this.imageLightTheme,
      this.height = 30})
      : super(key: key);

  final int widgetPosition;
  final String imageLightTheme, imageDarkTheme;
  final double height;

  @override
  Widget build(BuildContext context, watch) {
    var selectedTheme = watch(themeSelector).state;
    return GestureDetector(
        onTap: () {
          context.read(themeSelector).state = widgetPosition;
          if( widgetPosition == 0){
            context.read(backGroundColor).state = GlobalColors.primaryBlack;
            context.read(tabColor).state = GlobalColors.secondaryBlack;
            context.read(textColor).state = GlobalColors.primaryWhite;
          } else {
            context.read(backGroundColor).state = GlobalColors.primaryWhite;
            context.read(tabColor).state = GlobalColors.tabWhite;
            context.read(textColor).state = GlobalColors.primaryBlack;
          }
        },
        child: selectedTheme == widgetPosition
            ? SvgPicture.asset('assets/svg/$imageLightTheme', height: height)
            : SvgPicture.asset('assets/svg/$imageDarkTheme', height: height));
  }
}
