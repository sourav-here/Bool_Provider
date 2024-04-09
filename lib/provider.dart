import 'package:flutter/material.dart';

class Click extends ChangeNotifier {
  bool isCliked = false;

  clicked() {
    isCliked = !isCliked;
    notifyListeners();
  }
}
class Clickk extends ChangeNotifier {
  bool isCliked = false;

  clickedd() {
    isCliked = !isCliked;
    notifyListeners();
  }
}
