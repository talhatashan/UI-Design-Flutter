import 'package:flutter/material.dart';
import 'package:uygulama_alistirmalari_2/101/talha_denemeler/travel_app.dart/travel_app.dart';

class SecondImagePage extends StatelessWidget {
  const SecondImagePage({super.key});

  final String _whyElazig =
      'Ben size söyleyeyim, Elazığ ve Malatya’ya gelince insan raydan çıkıyor. Elazığ’da en son gün 3 kez akşam yemeği yiyor, bi de utanmadan şekerli pideye ekmek banıyordum. Aman, battı balık yan gider. Napalım, Gakkoşlar Diyarı’nın tadı böyle çıkıyor';

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
                        path: 'ticket',
                      )))),
          Expanded(
            flex: 5,
            child: Padding(
              padding: PaddingStyle.normPadding,
              child: Text(
                _whyElazig,
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
