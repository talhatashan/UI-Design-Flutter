import "package:flutter/material.dart";

class MerhabaCounter extends StatefulWidget {
  const MerhabaCounter({super.key});

  @override
  State<MerhabaCounter> createState() => _MerhabaCounterState();
}

class _MerhabaCounterState extends State<MerhabaCounter> {
  int _tiklayanMusteri = 0;

  void musteriTikCounter() {
    _tiklayanMusteri++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          musteriTikCounter();
        },
        child: Text(
          'Tiklayan Musteri Sayisi =  ${_tiklayanMusteri.toString()}',
          style: Theme.of(context).textTheme.headlineMedium,
        ));
  }
}
