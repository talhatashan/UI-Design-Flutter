import "package:flutter/material.dart";

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const GetCardWithListTile(head: 'Su Sogutmali Reaktor', altHead: 'VVER'),
          const GetCardWithListTile(head: 'Kanal Tipi Reaktor', altHead: 'RBMK'),
          ListTile(
            title: SizedBox(
                height: 100, child: Image.asset("assets/png/notepad.png")),
            subtitle: const Text('bu bir alt baslik'),
          )
        ],
      ),
    );
  }
}

class GetPadding {
  static EdgeInsets paddingNorm = const EdgeInsets.all(8.0);
}

class CardShape {
  static RoundedRectangleBorder borderNorm =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(50));
}

class GetCardWithListTile extends StatelessWidget {
  const GetCardWithListTile(
      {super.key, required this.head, required this.altHead});
  final String head;
  final String altHead;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: CardShape.borderNorm,
      child: Padding(
        padding: GetPadding.paddingNorm,
        child: ListTile(
          title: Text(head),
          onTap: () {},
          subtitle: Text(altHead),
          leading: const Icon(Icons.auto_mode_outlined),
          trailing: const Icon(Icons.chevron_right_outlined),
        ),
      ),
    );
  }
}
