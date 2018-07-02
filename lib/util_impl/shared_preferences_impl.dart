import 'dart:async';

import 'package:firstapp/util/shared_rreferences_util.dart';

class SharePreferencesImpl {
  static const String KEY_LOGIN = 'KEY_LOGIN';

  static SharePreferencesImpl _instance;
  static SharedPreferences sharedPreferences;

  static Future<SharePreferencesImpl> getInstance() async {
    if (_instance == null) {
      _instance = new SharePreferencesImpl();
    }
    return _instance;
  }

  SharePreferencesImpl() {
    sharedPreferences = SharedPreferences.getInstance() as SharedPreferences;
  }

  static bool isLogin() => sharedPreferences.get(KEY_LOGIN);

  static void setLogin(bool isLogin) =>
      sharedPreferences.setBool(KEY_LOGIN, isLogin);
}
