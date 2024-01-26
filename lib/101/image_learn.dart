import "package:flutter/material.dart";

class ImageLearnWiew extends StatelessWidget {
  const ImageLearnWiew({super.key});
  final String _imagePath =
      "https://freepngimg.com/save/7769-strawberry-png-images/1000x1000.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Text("привет"),
          Center(
            child: SizedBox(
              height: 300,
              width: 300,
              child: GetImageComponent(path: ImageItems.imageAppleBook),
            ),
          ),
          SizedBox(
            height: 200,
            width: 200,
            child: Image.network(
              _imagePath,
              errorBuilder: (context, error, stackTrace) =>
                  GetImageComponent(path: ImageItems.imageAppleBook),
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}

class ImageItems {
  static String imageAppleBook = "elmakitap";
  static String imageGoogle = "google";
}

class GetImageComponent extends StatelessWidget {
  const GetImageComponent({super.key, required this.path});
  final String path;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/png/$path.png",
      fit: BoxFit.cover,
    );
  }
}
// child: Image.asset("assets/yilan.png")