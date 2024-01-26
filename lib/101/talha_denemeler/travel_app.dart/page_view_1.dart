import 'package:flutter/material.dart';
import 'package:uygulama_alistirmalari_2/101/talha_denemeler/travel_app.dart/travel_app.dart';

class FirstImagePage extends StatelessWidget {
  const FirstImagePage({super.key});
  final String _elazig =
      'Şehir ilk olarak Harput Kalesi’nin eteklerinde kurulmuş, daha sonra tüm bölgeye yayılmış. Şehir merkezine oldukça yakın olduğundan beraber gezilebilir. Gastronomi açısından en çok seçenek de burada.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              flex: 5,
              child: Center(
                  child: SizedBox(
                      height: 250,
                      width: 250,
                      child: ImageGetter(
                        path: 'travel',
                      )))),
          Expanded(
            flex: 5,
            child: Padding(
              padding: PaddingStyle.normPadding,
              child: Text(
                _elazig,
                style: Theme.of(context).textTheme.bodyLarge,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ImageGetter extends StatelessWidget {
  const ImageGetter({
    super.key,
    required this.path,
  });
  final String path;

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/png/$path.png');
  }
}
