import "package:flutter/material.dart";

class TalhaTabBarLearn extends StatefulWidget {
  const TalhaTabBarLearn({super.key});

  @override
  State<TalhaTabBarLearn> createState() => _TalhaTabBarLearnState();
}

class _TalhaTabBarLearnState extends State<TalhaTabBarLearn> with TickerProviderStateMixin {
  late final _controllerTabBar;
  @override
  void initState() {
    super.initState();
    _controllerTabBar = TabController(length: _TabBars.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _TabBars.values.length,
        child: Scaffold(
            bottomNavigationBar: BottomAppBar(
              child: bottomTabBar(),
            ),
            appBar: usttenTabBar(),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
            floatingActionButton: FloatingActionButton(
                shape: const CircleBorder(),
                onPressed: () {
                  _controllerTabBar.animateTo(_TabBars.HOME.index);
                  ;
                },
                child: const Icon(Icons.accessibility_rounded)),
            body: TabBarView(controller: _controllerTabBar, children: [
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.blue,
              ),
              Container(
                color: Colors.purple,
              )
            ])));
  }

  TabBar usttenTabBar() {
    return TabBar(
        controller: _controllerTabBar,
        tabs: _TabBars.values
            .map((e) => Tab(
                  text: '${e.name}',
                ))
            .toList());
  }

  TabBar bottomTabBar() {
    return TabBar(
        controller: _controllerTabBar,
        tabs: _TabBars.values
            .map((e) => Tab(
                  text: '${e.name}',
                ))
            .toList());
  }
}

enum _TabBars { HOME, SETTINGS, APPS }
