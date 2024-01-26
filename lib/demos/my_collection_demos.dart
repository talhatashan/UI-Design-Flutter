import "package:flutter/material.dart";
import "package:flutter/rendering.dart";

class MyCollectionDemos extends StatefulWidget {
  const MyCollectionDemos({super.key});

  @override
  State<MyCollectionDemos> createState() => _MyCollectionDemosState();
}

class _MyCollectionDemosState extends State<MyCollectionDemos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_circle_left_outlined,
                size: 30,
              )),
          title: Text(
            'My Collections',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        body: ListView.separated(
            separatorBuilder: (context, index) {
              return Divider();
            },
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Card(
                      child: SizedBox(
                          width: 300,
                          height: 200,
                          child: Image.network('https://picsum.photos/200/300', fit: BoxFit.cover))),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Abstract Art',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      Text(
                        '34 ETH',
                        style: Theme.of(context).textTheme.headlineSmall,
                      )
                    ],
                  )
                ],
              );
            },
            itemCount: 20));
  }
}
