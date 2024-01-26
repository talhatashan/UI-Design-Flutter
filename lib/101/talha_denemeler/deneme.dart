import "package:flutter/material.dart";
import "package:uygulama_alistirmalari_2/101/talha_denemeler/merhaba_counter.dart";

class TekrarTalha extends StatefulWidget {
  const TekrarTalha({super.key});

  @override
  State<TekrarTalha> createState() => _TekrarTalhaState();
}

class _TekrarTalhaState extends State<TekrarTalha> {
  int _sayacValue = 0;

  void sayiDegistir(bool artirVeyaAzalt) {
    if (artirVeyaAzalt) {
      _sayacValue++;
    } else {
      _sayacValue--;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        children: [
          Padding(
            padding: PaddingAdd.normalPadding,
            child: arttirmaButonu(),
          ),
          azaltmaButonu(),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              _sayacValue.toString(),
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          const MerhabaCounter(),
        ],
      ),
    );
  }

  FloatingActionButton azaltmaButonu() {
    return FloatingActionButton(
      onPressed: () {
        sayiDegistir(false);
        print("merhaba");
      },
      child: const Icon(Icons.exposure_minus_1_outlined),
    );
  }

  FloatingActionButton arttirmaButonu() {
    return FloatingActionButton(
      onPressed: () {
        sayiDegistir(true);
      },
      child: const Icon(Icons.plus_one_outlined),
    );
  }
}

class PaddingAdd {
  static EdgeInsets normalPadding = const EdgeInsets.all(20);
}
