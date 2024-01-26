import "package:flutter/material.dart";

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 300,
            height: 200,
            child: Text("AKBanka Hosgeldiniz" * 500),
          ),
          SizedBox.square(
            dimension: 50,
            child: Text("b" * 50),
          ),
          SizedBox(
            height: 150,
            width: 150,
            child: Text("Talha" * 50),
          ),
        ],
      ),
    );
  }
}
