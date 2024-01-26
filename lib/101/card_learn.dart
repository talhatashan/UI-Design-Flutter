import "package:flutter/material.dart";

class CardLearnWiew extends StatelessWidget {
  const CardLearnWiew({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            color: Theme.of(context).colorScheme.onPrimary,
            // shape: const StadiumBorder(),
            // shape: const CircleBorder(),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            margin: ProjectMargins.marginLittle,
            child: const SizedBox(
                height: 100, width: 400, child: Center(child: Text("ATATURK"))),
          ),
          const CardAddWiew(
            child: SizedBox(
                height: 100,
                width: 400,
                child: Center(child: Text("MUSTAFA KEMAL askevbbrleriyiz"))),
          )
        ],
      ),
    );
  }
}

class ProjectMargins {
  static const marginLittle = EdgeInsets.all(20);
}

class CardAddWiew extends StatelessWidget {
  final Widget child;
  // final roundenRectangleBorder =
  //     RoundedRectangleBorder(borderRadius: BorderRadius.circular(0));
  const CardAddWiew({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Theme.of(context).colorScheme.onPrimary,
        // shape: roundenRectangleBorder,
        margin: ProjectMargins.marginLittle,
        child: child);
  }
}
