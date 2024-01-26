import "package:flutter/material.dart";

class ColorDemos extends StatefulWidget {
  const ColorDemos({super.key, required this.initialColor});
  final Color? initialColor;

  @override
  State<ColorDemos> createState() => _ColorDemosState();
}

class _ColorDemosState extends State<ColorDemos> {
  Color? _backgroundColor;

  void changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: widget.initialColor,
        appBar: AppBar(),
        bottomNavigationBar: BottomNavigationBar(
            onTap: (value) {
              if (value == _MyColors.red.index) {
                changeBackgroundColor(Colors.red);
              } else if (value == _MyColors.yellow.index) {
                changeBackgroundColor(Colors.yellow);
              } else if (value == _MyColors.blue.index) {
                changeBackgroundColor(Colors.blue);
              }
            },
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: ContainerMaker(renk: Colors.red), label: 'Red'),
              BottomNavigationBarItem(icon: ContainerMaker(renk: Colors.yellow), label: 'Yellow'),
              BottomNavigationBarItem(icon: ContainerMaker(renk: Colors.blue), label: 'Blue')
            ]));
  }
}

class ContainerMaker extends StatelessWidget {
  const ContainerMaker({
    super.key,
    required this.renk,
  });
  final Color renk;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      color: renk,
    );
  }
}

enum _MyColors {
  red,
  yellow,
  blue,
}
