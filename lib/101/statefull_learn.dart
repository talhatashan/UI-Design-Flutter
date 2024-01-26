import "package:flutter/material.dart";
import "package:uygulama_alistirmalari_2/producs/counter_hello_button.dart";

class StatefullLearn extends StatefulWidget {
  const StatefullLearn({super.key});

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  int countValue = 0;

  void _updateCounter(bool isIncrement) {
    if (isIncrement) {
      countValue++;
    } else {
      countValue--;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [_getPlus(), _getMinus()],
      ),
      body: Column(
        children: [
          Center(
              child: Text(
            countValue.toString(),
            style: Theme.of(context).textTheme.headlineSmall,
          )),
          const CounterHelloButton(),
        ],
      ),
    );
  }

  Padding _getMinus() {
    return Padding(
      padding: PaddingGetPlus.paddingNorm,
      child: FloatingActionButton(
          onPressed: () {
            _updateCounter(false);
          },
          child: const Icon(Icons.exposure_minus_1_sharp)),
    );
  }

  FloatingActionButton _getPlus() {
    print('Privet');
    return FloatingActionButton(
        onPressed: () {
          _updateCounter(true);
        },
        child: const Icon(Icons.plus_one_outlined));
  }
}

class PaddingGetPlus {
  static EdgeInsets paddingNorm = const EdgeInsets.all(10);
}
