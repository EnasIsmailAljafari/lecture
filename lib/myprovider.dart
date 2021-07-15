import 'package:flutter/cupertino.dart';

class MyProvider extends ChangeNotifier {
  String text = 'initial text';
  changeTextValue(String value) {
    this.text = value;
    notifyListeners();
  }
}
