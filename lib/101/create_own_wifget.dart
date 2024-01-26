import "package:flutter/material.dart";

class UygulamaGiris extends StatelessWidget {
  const UygulamaGiris({
    super.key,
  });
  final String baslik = 'Food';
  final String appBarBaslik = 'Restoranimiza hosgeldiniz';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarBaslik),
      ),
      body: Column(
        children: [
          GetButton(
            baslik: baslik,
          ),
          Padding(
            padding: GetPadding.normalPadding,
            child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: GetButton(
                  baslik: baslik,
                )),
          )
        ],
      ),
    );
  }
}

class GetPadding {
  static EdgeInsets normalPadding = const EdgeInsets.all(20);
}

class CustomColors {
  static Color customColorRed = Colors.red;
  static Color customColorWhite = Colors.white;
}

class GetButton extends StatelessWidget {
  const GetButton({super.key, required this.baslik});
  final String baslik;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(), backgroundColor: CustomColors.customColorRed),
      onPressed: () {},
      child: Text(
        baslik,
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: CustomColors.customColorWhite, fontWeight: FontWeight.bold),
      ),
    );
  }
}
