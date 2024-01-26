import "package:flutter/material.dart";

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: ProjectPadding.pagePaddingVertical,
            child: Container(
              color: Colors.white,
              height: 100,
            ),
          ),
          Container(
            color: Colors.white,
            height: 100,
          )
        ],
      ),
    );
  }
}

class ProjectPadding {
  static const pagePaddingVertical = EdgeInsets.symmetric(vertical: 20);
}
