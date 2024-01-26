import 'package:flutter/material.dart';
import 'package:uygulama_alistirmalari_2/101/talha_denemeler/travel_app.dart/travel_app.dart';

class ThirdImagePage extends StatelessWidget {
  const ThirdImagePage({super.key});

  final String _bavulText =
      'Gakkoluk kendi içinde bir dil, bir kültür. Herşeye kendi yorumlari var. Naneye anuh, gözlemeye patila diyor, pideyi şekerli yiyorlar. Size dekoder niteliğinde bir Elaziğ gezilecek yerler rehberi çikardik. Program şu: yemek ye, iki gindirlan, yine yemek ye. ';

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
                        path: 'valiz',
                      )))),
          Expanded(
            flex: 5,
            child: Padding(
              padding: PaddingStyle.normPadding,
              child: Text(
                _bavulText,
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
