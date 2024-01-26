import "package:flutter/material.dart";

class TalhaDeneme2 extends StatefulWidget {
  const TalhaDeneme2({super.key, required this.pembeArkaPlan});
  final Color? pembeArkaPlan;
  @override
  State<TalhaDeneme2> createState() => _TalhaDeneme2State();
}

class _TalhaDeneme2State extends State<TalhaDeneme2> {
  Color? _newBackgroungColor = Colors.transparent;
  void pembeYapmaFonksiyonu(Color color) {
    setState(() {
      _newBackgroungColor = widget.pembeArkaPlan;
    });
  }

  void _changeColor(Color color) {
    setState(() {
      _newBackgroungColor = color;
    });
  }

  @override
  void didUpdateWidget(covariant TalhaDeneme2 oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.pembeArkaPlan != _newBackgroungColor && widget.pembeArkaPlan != null) {
      _changeColor(widget.pembeArkaPlan!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _newBackgroungColor,
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (int value) {
            if (value == _MyColors.white.index) {
              _changeColor(Colors.white);
            } else if (value == _MyColors.blue.index) {
              _changeColor(Colors.blue);
            } else if (value == _MyColors.red.index) {
              _changeColor(Colors.red);
            }
          },
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.account_balance), label: 'White'),
            BottomNavigationBarItem(icon: Icon(Icons.account_balance), label: 'Blue'),
            BottomNavigationBarItem(icon: Icon(Icons.account_balance), label: 'Red'),
          ]),
    );
  }
}

enum _MyColors {
  white,
  blue,
  red,
}
