import "package:flutter/material.dart";

class GetCounterLearn extends StatefulWidget {
  const GetCounterLearn({super.key});

  @override
  State<GetCounterLearn> createState() => _GetCounterLearnState();
}

class _GetCounterLearnState extends State<GetCounterLearn> {
  int _counterValue = 0;
  void getCounterForall(bool dogruMuYanlisMi) {
    if (dogruMuYanlisMi) {
      _counterValue++;
    } else {
      _counterValue--;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: FloatingActionButton(
              onPressed: () {
                getCounterForall(true);
              },
              child: const Icon(Icons.plus_one),
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              getCounterForall(false);
            },
            child: const Icon(Icons.exposure_minus_1_rounded),
          ),
        ],
      ),
      body: Center(
        child: Text(
          _counterValue.toString(),
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
    );
  }
}
