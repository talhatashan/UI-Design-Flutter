import "package:flutter/material.dart";

class MyCollectionsJsonDemos extends StatefulWidget {
  const MyCollectionsJsonDemos({super.key});

  @override
  State<MyCollectionsJsonDemos> createState() => _MyCollectionsJsonDemosState();
}

class _MyCollectionsJsonDemosState extends State<MyCollectionsJsonDemos> {
  late final List<CollectionModel> _items;

  @override
  void initState() {
    _items = [
      CollectionModel(imagePath: 'assets/png/collection.png', title: 'Abstract Art1', price: 4.5),
      CollectionModel(imagePath: 'assets/png/collection.png', title: 'Abstract Art2', price: 5.5),
      CollectionModel(imagePath: 'assets/png/collection.png', title: 'Abstract Art3', price: 6.5),
      CollectionModel(imagePath: 'assets/png/collection.png', title: 'Abstract Art3', price: 7.5)
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('My Collections')),
        ),
        body: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 10),
          itemCount: _items.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.only(bottom: 60),
              child: Center(
                child: Column(
                  children: [
                    Image.asset(
                      _items[index].imagePath,
                      fit: BoxFit.cover,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [Text(_items[index].title), Text('${_items[index].price} ETH')],
                    )
                  ],
                ),
              ),
            );
          },
        ));
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final double price;
  CollectionModel({
    required this.imagePath,
    required this.title,
    required this.price,
  });
}
