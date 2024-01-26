import "package:flutter/material.dart";
import "package:flutter/services.dart";

class IconLearninWiew extends StatelessWidget {
  const IconLearninWiew({super.key});
  final String appBarTitle = "AKBANK";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 50,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        centerTitle: false,
        title: Text(
          "$appBarTitle A",
        ),
        leading: const Icon(Icons.alarm_rounded),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.add_to_photos)),
          // const CircularProgressIndicator(),
        ],
      ),
      body: Column(children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.message_outlined),
          alignment: Alignment.topLeft,
          iconSize: IconSizedModuls.maxSize,
        ),
        TextButton(onPressed: () {}, child: const Text("PAYMENT METOD")),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.account_circle_outlined),
          iconSize: IconSizedModuls.maxSize,
          color: ColorModuls.porshase,
        ),
        OutlinedButton.icon(
          onPressed: () {},
          label: const Text("odeme yap"),
          icon: const Icon(Icons.add_card_outlined),
        ),
        FloatingActionButton(onPressed: () {}),
        Container(
          height: 300,
          color: Colors.white12,
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
          ),
          child: const Padding(
            padding: EdgeInsets.only(top: 20, bottom: 20, left: 60, right: 60),
            child: Text(
              "Placed Bid",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ]),
    );
  }
}

class IconSizedModuls {
  static double minimumSize = 20;
  static double normSize = 30;
  static double maxSize = 50;
}

class ColorModuls {
  static Color porshase = const Color(0xffEDBF61);
}
