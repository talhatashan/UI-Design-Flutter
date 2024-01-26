import "package:flutter/material.dart";
import "package:uygulama_alistirmalari_2/demos/color_demos_view.dart";

class ColorDemosLifeCycleView extends StatefulWidget {
  const ColorDemosLifeCycleView({super.key});

  @override
  State<ColorDemosLifeCycleView> createState() => _ColorDemosLifeCycleViewState();
}

class _ColorDemosLifeCycleViewState extends State<ColorDemosLifeCycleView> {
  Color? _backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.change_circle))],
      ),
      body: Column(
        children: [
          Spacer(
            flex: 5,
          ),
          Expanded(
              flex: 5,
              child: ColorDemos(
                initialColor: Colors.purple,
              ))
        ],
      ),
    );
  }
}
