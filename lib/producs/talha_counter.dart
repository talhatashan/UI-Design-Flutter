import "package:flutter/material.dart";

class Sayac extends StatefulWidget {
  const Sayac({super.key});

  @override
  State<Sayac> createState() => _SayacState();
}

class _SayacState extends State<Sayac> {
  final String hello = 'Privettt';
  int _countNew = 0;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          setState(() {
            _countNew++;
          });
        },
        child: Text("$hello $_countNew"));
  }
}
