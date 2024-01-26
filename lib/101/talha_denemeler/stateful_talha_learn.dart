import "package:flutter/material.dart";

class TalhaStatefulLearn extends StatefulWidget {
  const TalhaStatefulLearn({super.key});

  @override
  State<TalhaStatefulLearn> createState() => _TalhaStatefulLearnState();
}

class _TalhaStatefulLearnState extends State<TalhaStatefulLearn> {
  int sayi = 0;

  void sayiArtirVeyaEksilt(bool isArtirEksilt) {
    if (isArtirEksilt) {
      setState(() {
        sayi++;
      });
    } else {
      setState(() {
        sayi--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            onPressed: () {
              sayiArtirVeyaEksilt(true);
            },
            child: const Icon(Icons.aspect_ratio),
          ),
          FloatingActionButton(
              onPressed: () {
                sayiArtirVeyaEksilt(false);
              },
              child: const Icon(Icons.minimize)),
        ],
      ),
      body: Column(
        children: [
          Center(
              child: Text(
            "$sayi",
            style: Theme.of(context).textTheme.headlineLarge,
          )),
        ],
      ),
    );
  }
}
