import "package:flutter/material.dart";

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        children: [
          Expanded(
            flex: 6,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('Talha'), Text('Talha2'), Text('Talha3')],
            ),
          ),
          Expanded(
            flex: 3,
            child: FlutterLogo(),
          ),
          Expanded(
            flex: 1,
            child: FlutterLogo(),
          ),
        ],
      ),
    );
  }
}
