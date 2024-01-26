import "package:flutter/material.dart";

class CounterHelloButton extends StatefulWidget {
  const CounterHelloButton({super.key});

  @override
  State<CounterHelloButton> createState() => _CounterHelloButtonState();
}

class _CounterHelloButtonState extends State<CounterHelloButton> {
  int _counterCus = 0;
  final String selam = 'Merhaba';

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          _getCount();
        },
        child: Text('$selam $_counterCus'));
  }

  void _getCount() {
    return setState(() {
      _counterCus++;
    });
  }
}
