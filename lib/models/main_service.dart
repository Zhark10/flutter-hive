import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import 'main_box.dart';

class MainService extends ChangeNotifier {
  String _boxName = "globalBox";

  GlobalState _global = GlobalState(colorTheme: Colors.red);

  void getGlobalState() async {
    var box = await Hive.openBox<GlobalState>(_boxName);
    _global = box.get(_boxName);
    notifyListeners();
  }

  void changeColorTheme(newColor) async {
    var box = await Hive.openBox<GlobalState>(_boxName);
    await box.put(0, newColor);
    notifyListeners();
  }

  GlobalState get contactCount {
    return _global;
  }
}