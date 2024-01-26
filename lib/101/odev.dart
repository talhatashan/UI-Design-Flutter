import "package:flutter/material.dart";

class FirsHomeWork extends StatelessWidget {
  const FirsHomeWork({super.key});
  final String noteHead = "Create your first note";
  final String noteAltBaslik =
      "Add a note about anything (your thoughts on climate change or your history essay and share it with the world)";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: SizedBox(
                width: 200,
                height: 200,
                child: GetImageWithPath(path: GetImage.getImageNotepad),
              ),
            ),
          ),
          Text(
            noteHead,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: PaddingValue.paddingNormal,
            child: Center(
              child: Text(
                noteAltBaslik,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ),
          Padding(
            padding: PaddingValue.paddingNormal,
            child: _createButton(context),
          ),
          Padding(
            padding: PaddingValue.paddingNormal,
            child: InkWell(
              onTap: () {},
              child: const Text("import notes"),
            ),
          )
        ],
      ),
    );
  }

  ElevatedButton _createButton(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 19, 103, 142),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Text(
          "Create A Note",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}

class GetImage {
  static String getImageNotepad = "notepad";
}

class GetImageWithPath extends StatelessWidget {
  final String path;

  const GetImageWithPath({super.key, required this.path});

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/png/$path.png", fit: BoxFit.cover);
  }
}

class PaddingValue {
  static const EdgeInsets paddingNormal = EdgeInsets.all(20);
}
