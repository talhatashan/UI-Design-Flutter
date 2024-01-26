import "package:flutter/material.dart";
import "package:uygulama_alistirmalari_2/101/talha_denemeler/colordemoApp/color_demos2.dart";

class LifeCycleColorDemos extends StatefulWidget {
  const LifeCycleColorDemos({super.key});

  @override
  State<LifeCycleColorDemos> createState() => _LifeCycleColorDemosState();
}

class _LifeCycleColorDemosState extends State<LifeCycleColorDemos> {
  Color? _backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: _changeBackgrouind, icon: const Icon(Icons.clear))],
      ),
      body: Column(
        children: [
          const Spacer(),
          Expanded(
              child: TalhaDeneme2(
            pembeArkaPlan: _backgroundColor,
          ))
        ],
      ),
    );
  }

  void _changeBackgrouind() {
    setState(() {
      _backgroundColor = Colors.pink[600];
    });
  }
}
