import "package:flutter/material.dart";

class TalhaLifeCycleLearn extends StatefulWidget {
  const TalhaLifeCycleLearn({super.key, required this.message});
  final String message;

  @override
  State<TalhaLifeCycleLearn> createState() => _TalhaLifeCycleLearnState();
}

class _TalhaLifeCycleLearnState extends State<TalhaLifeCycleLearn> {
  String _message = '';
  late final bool _isOdd;

  @override
  void initState() {
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;
    if (_isOdd) {
      _message += 'Tektir';
    } else {
      _message += 'Cifttir';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(_message),
          _isOdd
              ? ElevatedButton(onPressed: () {}, child: Text(_message))
              : TextButton(onPressed: () {}, child: Text(_message)),
        ],
      ),
    );
  }
}
