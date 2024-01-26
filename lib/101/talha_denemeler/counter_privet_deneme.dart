import "package:flutter/material.dart";

class PrivetCounter extends StatefulWidget {
  const PrivetCounter({super.key});

  @override
  State<PrivetCounter> createState() => _PrivetCounterState();
}

class _PrivetCounterState extends State<PrivetCounter> {
  int countPrivet = 0;
  final String sayHello = 'PRIVETt';

  void sayPrivet() {
    countPrivet++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              sayPrivet();
            },
            child: Text('$sayHello  $countPrivet'),
          ),
          ElevatedButton(onPressed: () {}, child: const Icon(Icons.abc))
        ],
      ),
    );
  }
}
