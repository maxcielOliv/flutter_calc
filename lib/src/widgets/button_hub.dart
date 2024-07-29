import 'package:flutter/material.dart';

sealed class ButtonClick {
  final String value;

  ButtonClick(this.value);
}

class CommonButtonclick extends ButtonClick {
  CommonButtonclick(super.value);
}

class EqualsButtonclick extends ButtonClick {
  EqualsButtonclick(super.value);
}

class ClearButtonclick extends ButtonClick {
  ClearButtonclick(super.value);
}

class ClearEntryButtonclick extends ButtonClick {
  ClearEntryButtonclick(super.value);
}

class ButtonHub extends StatelessWidget {
  final void Function(ButtonClick click)? onButtonClick;

  const ButtonHub({super.key, this.onButtonClick});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 4,
      children: <Widget>[
        Button(
          value: '%',
          color: Theme.of(context).colorScheme.onPrimary,
          onTap: (value) => onButtonClick!(CommonButtonclick(value)),
        ),
        Button(
          value: 'CE',
          color: Theme.of(context).colorScheme.onPrimary,
          onTap: (value) => onButtonClick!(ClearEntryButtonclick(value)),
        ),
        Button(
          value: 'C',
          color: Theme.of(context).colorScheme.onPrimary,
          onTap: (value) => onButtonClick!(ClearButtonclick(value)),
        ),
        Button(
          value: '',
          color: Theme.of(context).colorScheme.primary,
        ),
        Button(
          value: '7',
          onTap: (value) => onButtonClick!(CommonButtonclick(value)),
        ),
        Button(
          value: '8',
          onTap: (value) => onButtonClick!(CommonButtonclick(value)),
        ),
        Button(
          value: '9',
          onTap: (value) => onButtonClick!(CommonButtonclick(value)),
        ),
        Button(
          value: '/',
          color: Theme.of(context).colorScheme.onPrimary,
          onTap: (value) => onButtonClick!(CommonButtonclick(value)),
        ),
        Button(
          value: '4',
          onTap: (value) => onButtonClick!(CommonButtonclick(value)),
        ),
        Button(
          value: '5',
          onTap: (value) => onButtonClick!(CommonButtonclick(value)),
        ),
        Button(
          value: '6',
          onTap: (value) => onButtonClick!(CommonButtonclick(value)),
        ),
        Button(
          value: '*',
          color: Theme.of(context).colorScheme.onPrimary,
          onTap: (value) => onButtonClick!(CommonButtonclick(value)),
        ),
        Button(
          value: '1',
          onTap: (value) => onButtonClick!(CommonButtonclick(value)),
        ),
        Button(
          value: '2',
          onTap: (value) => onButtonClick!(CommonButtonclick(value)),
        ),
        Button(
          value: '3',
          onTap: (value) => onButtonClick!(CommonButtonclick(value)),
        ),
        Button(
          value: '+',
          color: Theme.of(context).colorScheme.onPrimary,
          onTap: (value) => onButtonClick!(CommonButtonclick(value)),
        ),
        Button(
          value: '-',
          onTap: (value) => onButtonClick!(CommonButtonclick(value)),
        ),
        Button(
          value: '0',
          onTap: (value) => onButtonClick!(CommonButtonclick(value)),
        ),
        Button(
          value: '.',
          onTap: (value) => onButtonClick!(CommonButtonclick(value)),
        ),
        Button(
          value: '=',
          color: Theme.of(context).colorScheme.onPrimary,
          onTap: (value) => onButtonClick!(EqualsButtonclick(value)),
        ),
      ],
    );
  }
}

class Button extends StatelessWidget {
  final String value;
  final Color? color;
  final void Function(String value)? onTap;
  const Button({super.key, required this.value, this.color, this.onTap});

  @override
  Widget build(BuildContext context) {
    final color = this.color ?? Theme.of(context).colorScheme.primary;
    return Material(
      color: color,
      child: InkWell(
        onTap: onTap == null ? null : () => onTap!(value),
        child: Container(
          padding: const EdgeInsets.all(8),
          color: color,
          child: Center(
            child: Text(
              value,
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ),
        ),
      ),
    );
  }
}
