import "package:flutter/material.dart";
import "package:flutter/rendering.dart";

class CampSecondPage extends StatelessWidget {
  const CampSecondPage({super.key});

  final String mainBaslik = 'Search campsites or campers';
  final String altBaslik1 = 'Dogayi kesfedin';
  final String altBaslik2 = 'Hemen biletinizi ayirin';
  final String altBaslik3 = 'Yolculuga cikmaya hazir misiniz?';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Row(
            children: [Icon(Icons.fireplace_outlined), Icon(Icons.access_time_filled_outlined)],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                labelText: mainBaslik,
                border: const OutlineInputBorder(),
                prefixIcon: const Icon(Icons.search_outlined)),
          ),
          sizedBox1(altBaslik1: altBaslik1, altBaslik2: altBaslik2, altBaslik3: altBaslik3),
        ],
      ),
    );
  }
}

class sizedBox1 extends StatelessWidget {
  const sizedBox1({
    super.key,
    required this.altBaslik1,
    required this.altBaslik2,
    required this.altBaslik3,
  });

  final String altBaslik1;
  final String altBaslik2;
  final String altBaslik3;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 300,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          NewWidgetContainer(
            imageName: 'campsite',
            altBaslik: altBaslik1,
          ),
          const Spacer(),
          NewWidgetContainer(imageName: 'nature', altBaslik: altBaslik2),
          const Spacer(),
          NewWidgetContainer(imageName: 'otlar', altBaslik: altBaslik3)
        ],
      ),
    );
  }
}

class sizedBox extends StatelessWidget {
  const sizedBox({
    super.key,
    required this.altBaslik1,
    required this.altBaslik2,
    required this.altBaslik3,
  });

  final String altBaslik1;
  final String altBaslik2;
  final String altBaslik3;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 300,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          NewWidgetContainer(
            imageName: 'campsite',
            altBaslik: altBaslik1,
          ),
          const Spacer(),
          NewWidgetContainer(imageName: 'nature', altBaslik: altBaslik2),
          const Spacer(),
          NewWidgetContainer(imageName: 'otlar', altBaslik: altBaslik3)
        ],
      ),
    );
  }
}

class NewWidgetContainer extends StatelessWidget {
  const NewWidgetContainer({
    super.key,
    required this.imageName,
    required this.altBaslik,
  });

  final String imageName;
  final String altBaslik;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 400,
      child: ListTile(
        subtitle: Text(altBaslik),
        title: SizedBox(
            child: Image.asset(
          "assets/png/$imageName.png",
          fit: BoxFit.fill,
        )),
      ),
    );
  }
}

class PaddingVer {
  static final EdgeInsets normPadding = EdgeInsets.all(5.0);
}
