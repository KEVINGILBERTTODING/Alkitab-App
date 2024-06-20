import 'dart:ffi';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yesheis/core/constans/constans.dart';

class UserService extends GetxService {
  late SharedPreferences _sharedPreferences;

  Future<UserService> initSharedPref() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    return this;
  }

  bool isFirstTime() {
    return _sharedPreferences.getBool(Constans.PREF_FIRST_TIME) ?? true;
  }

  Future<void> saveBool(bool val) async {
    await _sharedPreferences.setBool(Constans.PREF_FIRST_TIME, val);
    return;
  }
}
