
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'colors.dart';


final themeSelector = StateProvider.autoDispose((ref) => 0);
final backGroundColor = StateProvider.autoDispose((ref) => GlobalColors.primaryBlack);
final textColor = StateProvider.autoDispose((ref) => GlobalColors.primaryWhite);
final tabColor = StateProvider.autoDispose((ref) => GlobalColors.secondaryBlack);

final calculatorEquation = StateProvider.autoDispose((ref) => '0');
final equationResult = StateProvider.autoDispose((ref) => '0');
