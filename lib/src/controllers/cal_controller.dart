import 'package:calculadora/src/widgets/button_hub.dart';
import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class CalcController extends ChangeNotifier {
  var display = '0';

  void onButtonClick(ButtonClick click) {
    if (display == '0') {
      display = '';
    }

    if (click is CommonButtonclick) {
      display += click.value;
      notifyListeners();
    } else if (click is ClearButtonclick) {
      display = '0';
    } else if (click is ClearEntryButtonclick) {
      display = '0s';
    } else if (click is EqualsButtonclick) {
      final v = display.interpret();
      display = '$v';
    }

    notifyListeners();
  }
}
