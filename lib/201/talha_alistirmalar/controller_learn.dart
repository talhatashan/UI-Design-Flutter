import "package:flutter/material.dart";

class TalhaControllerLearn extends StatefulWidget {
  const TalhaControllerLearn({super.key});

  @override
  State<TalhaControllerLearn> createState() => _TalhaControllerLearnState();
}

class _TalhaControllerLearnState extends State<TalhaControllerLearn> with TickerProviderStateMixin {
  late final _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: _TabView.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                _controller.animateTo(_TabView.HOME.index);
              },
              child: Icon(Icons.comment),
            ),
            bottomNavigationBar: TabBar(controller: _controller, tabs: [
              Tab(text: _TabView.HOME.name),
              Tab(
                text: _TabView.SETTINGS.name,
              )
            ]),
            body: TabBarView(
              controller: _controller,
              children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/png/campsite.png'), fit: BoxFit.cover)),
                ),
                Container(
                  color: Colors.amber,
                )
              ],
            )));
  }
}

enum _TabView {
  HOME,
  SETTINGS,
}
