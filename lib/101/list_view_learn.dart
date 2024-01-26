import "package:flutter/material.dart";

class ListViewLearn extends StatelessWidget {
  const ListViewLearn({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Container(
            height: 200,
            color: Colors.purple,
          ),
          Divider(),
          SizedBox(
            height: 300,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              Container(
                width: 100,
                color: Colors.yellow,
              ),
              Container(
                width: 100,
                color: Colors.blue,
              ),
              Container(
                width: 100,
                color: Colors.green,
              ),
              Container(
                width: 100,
                color: Colors.purple,
              ),
              Container(width: 100, color: Colors.black),
            ]),
          ),
          Placeholder(),
          Text(
            'Talha Tashan',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          Placeholder(),
        ],
      ),
    );
  }
}
