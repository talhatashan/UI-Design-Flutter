import "package:flutter/material.dart";

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({super.key});

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const TextField(
            maxLength: 20,
            decoration:
                InputDecoration(prefixIcon: Icon(Icons.message), border: OutlineInputBorder(), label: Text('Mail')),
          ),
          TextFormField()
        ],
      ),
    );
  }
}
