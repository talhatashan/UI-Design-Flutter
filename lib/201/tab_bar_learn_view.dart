import "package:flutter/material.dart";
import "package:uygulama_alistirmalari_2/101/image_learn.dart";
import "package:uygulama_alistirmalari_2/101/page_view_learn.dart";
import "package:uygulama_alistirmalari_2/101/talha_denemeler/camp_app/camp_main_screen.dart";

class TabBarLearn extends StatefulWidget {
  const TabBarLearn({super.key});

  @override
  State<TabBarLearn> createState() => _TabBarLearnState();
}

class _TabBarLearnState extends State<TabBarLearn> with TickerProviderStateMixin {
  //asagida construktor atma olacagi icin late verelim ve asil degerini InitState icerisinde alsin
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _MyTabViews.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _MyTabViews.values.length,
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            shape: const CircleBorder(),
            onPressed: () {
              _tabController.animateTo(_MyTabViews.home.index);
            },
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
          bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            child: TabBar(
                controller: _tabController, tabs: _MyTabViews.values.map((e) => Tab(text: '${e.name}')).toList()),
          ),
          appBar: AppBar(),
          body: TabBarView(controller: _tabController, children: [
            Container(
              color: Colors.amber,
            ),
            Container(
              color: Colors.grey[400],
            ),
            Container(
              color: Colors.blue[400],
            ),
            Container(
              color: Colors.red[400],
            ),
          ]),
        ));
  }
}

enum _MyTabViews {
  home,
  settings,
  favorite,
  profile,
}
