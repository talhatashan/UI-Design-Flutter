import 'package:flutter/material.dart';
import 'package:uygulama_alistirmalari_2/101/talha_denemeler/travel_app.dart/paga_view_3.dart';
import 'package:uygulama_alistirmalari_2/101/talha_denemeler/travel_app.dart/page_view_1.dart';
import 'package:uygulama_alistirmalari_2/101/talha_denemeler/travel_app.dart/travel_view_2.dart';
import 'package:uygulama_alistirmalari_2/producs/Strings_ifadeler/string_ifadeler.dart';

class TravelApp extends StatefulWidget {
  @override
  State<TravelApp> createState() => _TravelAppState();
}

class _TravelAppState extends State<TravelApp> {
  Color _backgroundColor = Colors.transparent;
  void _ChangeColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  final PageController _pageControl = PageController(viewportFraction: 0.8);

  int _currentPage = 0;
  void name(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.airplanemode_on)],
        title: Text(StringItems.companyName,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.black)),
        leading: Icon(Icons.airline_seat_legroom_reduced),
        backgroundColor: _backgroundColor,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          if (value == 0) {
            _ChangeColor(Colors.red);
          } else if (value == 1) {
            _ChangeColor(Colors.blue);
          } else if (value == 2) {
            _ChangeColor(Colors.yellow);
          }
        },
        items: <BottomNavigationBarItem>[
          homeBottom(),
          supervisorButtom(),
          ringvolumeBottom(),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: PaddingStyle.normPadding,
            child: leftButton(),
          ),
          rightButton(),
          Text(' $_currentPage')
        ],
      ),
      body: PageView(
        onPageChanged: name,
        controller: _pageControl,
        children: [
          FirstImagePage(),
          SecondImagePage(),
          ThirdImagePage(),
        ],
      ),
    );
  }

  BottomNavigationBarItem ringvolumeBottom() {
    return BottomNavigationBarItem(
      icon: Icon(Icons.ring_volume),
      label: StringItems.labelContact,
    );
  }

  BottomNavigationBarItem supervisorButtom() {
    return BottomNavigationBarItem(
      icon: Icon(Icons.supervisor_account),
      label: StringItems.labelSuperVisor,
    );
  }

  BottomNavigationBarItem homeBottom() {
    return BottomNavigationBarItem(
      icon: const Icon(Icons.home),
      label: StringItems.labelHome,
    );
  }

  FloatingActionButton rightButton() {
    return FloatingActionButton(
      onPressed: () {
        _pageControl.nextPage(duration: Duration(seconds: 1), curve: Easing.standard);
      },
      child: Icon(Icons.arrow_right),
    );
  }

  FloatingActionButton leftButton() {
    return FloatingActionButton(
      onPressed: () {
        _pageControl.previousPage(duration: Duration(seconds: 1), curve: Easing.standard);
      },
      child: Icon(Icons.arrow_left),
    );
  }
}

class PaddingStyle {
  static EdgeInsets normPadding = EdgeInsets.all(20);
}
