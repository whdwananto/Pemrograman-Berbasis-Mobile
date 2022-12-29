import 'package:flutter/cupertino.dart';

class PasswordProvider extends ChangeNotifier {
  bool _viewpw = true;
  bool get viewpw => _viewpw;

  passwordview() {
    _viewpw = !viewpw;
    notifyListeners();
  }
}
