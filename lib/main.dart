import 'package:flutter/material.dart';
import 'package:uygulama_alistirmalari_2/101/list_view_builder_learn.dart';
import 'package:uygulama_alistirmalari_2/101/list_view_learn.dart';
import 'package:uygulama_alistirmalari_2/101/navigation_learn.dart';
import 'package:uygulama_alistirmalari_2/101/page_view_learn.dart';
import 'package:uygulama_alistirmalari_2/101/talha_denemeler/camp_app/camp_main_screen.dart';

import 'package:uygulama_alistirmalari_2/101/talha_denemeler/colordemoApp/color_demos2.dart';
import 'package:uygulama_alistirmalari_2/101/talha_denemeler/colordemoApp/life_cycyle_color_demos.dart';
import 'package:uygulama_alistirmalari_2/101/talha_denemeler/colordemoApp/veli_bacik_version/color_demo.dart';
import 'package:uygulama_alistirmalari_2/101/talha_denemeler/deneme.dart';
import 'package:uygulama_alistirmalari_2/101/talha_denemeler/life_cycle_tekrar.dart';
import 'package:uygulama_alistirmalari_2/101/talha_denemeler/travel_app.dart/paga_view_3.dart';
import 'package:uygulama_alistirmalari_2/101/talha_denemeler/travel_app.dart/page_view_1.dart';
import 'package:uygulama_alistirmalari_2/101/talha_denemeler/travel_app.dart/travel_app.dart';
import 'package:uygulama_alistirmalari_2/101/talha_denemeler/travel_app.dart/travel_view_2.dart';
import 'package:uygulama_alistirmalari_2/101/text_field_learn.dart';
import 'package:uygulama_alistirmalari_2/201/tab_bar_learn_view.dart';
import 'package:uygulama_alistirmalari_2/201/talha_alistirmalar/controller_learn.dart';
import 'package:uygulama_alistirmalari_2/201/talha_alistirmalar/talha_tab_bar_learn.dart';
import 'package:uygulama_alistirmalari_2/demos/color_demos_view.dart';
import 'package:uygulama_alistirmalari_2/demos/life_cycle_color_demos.dart';
import 'package:uygulama_alistirmalari_2/demos/my_collection_demos.dart';
import 'package:uygulama_alistirmalari_2/demos/my_collections_json_demos.dart';
import 'package:uygulama_alistirmalari_2/producs/talha_counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
          progressIndicatorTheme: const ProgressIndicatorThemeData(color: Colors.white),
          cardTheme: CardTheme(shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(20)))),
      home: TalhaControllerLearn(),
    );
  }
}
