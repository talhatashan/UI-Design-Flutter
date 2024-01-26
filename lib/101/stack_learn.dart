import 'package:flutter/material.dart';

class StackLearn extends StatelessWidget {
  const StackLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Positioned.fill(
                    bottom: 25,
                    child: Image.asset('assets/png/likya.jpg'),
                  ),
                  Positioned(
                      height: 50,
                      width: 200,
                      child: Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      ))
                ],
              )),
          const Spacer(
            flex: 6,
          ),
        ],
      ),
    );
  }
}
