import "package:flutter/material.dart";

class StatelessLearn extends StatelessWidget {
  const StatelessLearn({super.key});
  final String text1 = "Akbank";
  final String text2 = "Vakifbank";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TitleTextWidget(
            text: text1,
          ),
          _emptyBox(),
          TitleTextWidget(
            text: text2,
          ),
          const _CustomContainer(),
        ],
      ),
    );
  }

  SizedBox _emptyBox() {
    return const SizedBox(
      height: 20,
    );
  }
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer();

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)));
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
