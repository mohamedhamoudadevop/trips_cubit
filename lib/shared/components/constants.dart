// ignore_for_file: non_constant_identifier_names, avoid_print

import 'package:home_cubit/modules/Home/home_screen.dart';
import 'package:home_cubit/shared/components/components.dart';
import 'package:home_cubit/shared/network/local/cache_helper.dart';

void SignOut(context) {
  CacheHelper.RemoveData(key: 'token').then((value) {
    if (value) {
      NavigateAndFinish(context, HomeScreen());
    }
  });
}

void printFullText(String text) {
  final pattern = RegExp('.{1,800}');
  pattern.allMatches(text).forEach((element) => print(element.group(0)));
}

String? TOKEN = '';
