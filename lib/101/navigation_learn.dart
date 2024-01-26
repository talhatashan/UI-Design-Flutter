import "package:flutter/material.dart";
import "package:uygulama_alistirmalari_2/101/image_learn.dart";
import "package:uygulama_alistirmalari_2/101/talha_denemeler/travel_app.dart/page_view_1.dart";
import "package:uygulama_alistirmalari_2/101/talha_denemeler/travel_app.dart/travel_app.dart";
import "package:uygulama_alistirmalari_2/demos/my_collections_json_demos.dart";

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({super.key});

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn> with NavigatorMaker {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          navigateIt(context, FirstImagePage());
        },
        child: const Icon(Icons.navigation_sharp),
      ),
    );
  }
}

mixin NavigatorMaker {
  void navigateIt(BuildContext context, Widget widget) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return widget;
      },
      fullscreenDialog: true,
      settings: RouteSettings(),
    ));
  }
}
