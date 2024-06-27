import 'dart:ffi';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yesheis/core/constans/constans.dart';

class UserService extends GetxService {
  late SharedPreferences _sharedPreferences;

  @override
  void onInit() async {
    print('UserService onInit');
    await initSharedPref();
    super.onInit();
  }

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

  Future<void> saveInt(String key, int val) async {
    await _sharedPreferences.setInt(key, val);
    return;
  }

  Future<void> saveString(String key, String val) async {
    await _sharedPreferences.setString(key, val);
    return;
  }

  Future<void> saveDouble(String key, double val) async {
    await _sharedPreferences.setDouble(key, val);
    return;
  }

  double getDouble(String key) {
    return _sharedPreferences.getDouble(key) ?? 0.0;
  }

  String getString(String key) {
    return _sharedPreferences.getString(key) ?? "";
  }

  int getInt(String key) {
    return _sharedPreferences.getInt(key) ?? 0;
  }
}
