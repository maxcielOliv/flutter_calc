import 'package:calculadora/src/controllers/cal_controller.dart';
import 'package:calculadora/src/widgets/button_hub.dart';
import 'package:calculadora/src/widgets/display.dart';
import 'package:flutter/material.dart';

class CalcPage extends StatefulWidget {
  const CalcPage({super.key});

  @override
  State<CalcPage> createState() => _CalcPageState();
}

class _CalcPageState extends State<CalcPage> {
  final controler = CalcController();

  void _listener() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    controler.addListener(_listener);
  }

  @override
  void dispose() {
    controler.removeListener(_listener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Expanded(
              flex: 1,
              child: Display(
                value: controler.display,
              )),
          Expanded(
            flex: 3,
            child: ButtonHub(onButtonClick: controler.onButtonClick),
          ),
        ],
      ),
    );
  }
}