import "package:flutter/material.dart";

class TextLearnView extends StatelessWidget {
  const TextLearnView({super.key});
  final String nameBank = "AKBANK";

  @override
  Widget build(Object context) {
    return const Scaffold(
      body: Center(
          child: Text(
        'You have pressed the button times.',
        textAlign: TextAlign.left,
        maxLines: 3,
        style: TextStyle(
            color: Colors.blueAccent, fontSize: 25, fontWeight: FontWeight.w600, overflow: TextOverflow.ellipsis),
      )),
      backgroundColor: Color.fromARGB(255, 27, 43, 50),
    );
  }
}
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//           child: Text(" $nameBank HOSGELDINIZ",
//               textAlign: TextAlign.left,
//               maxLines: 2,
//               overflow: TextOverflow.ellipsis,
//               style: Theme.of(context)
//                   .textTheme
//                   .headlineMedium
//                   ?.copyWith(color: ClientColor.clientColor))),
//     );
//   }
// }

// class TextStyles {
//   static TextStyle welcomeStyle = const TextStyle(
//     color: Colors.red,
//     fontSize: 26,
//     wordSpacing: 2,
//     letterSpacing: 2,
//     fontWeight: FontWeight.w600,
//   );
// }

// //mesela bir renk profili var, degisince her yerde degismesi gerekiyor,
// //class olustur ve buradan atama yap
// class ClientColor {
//   static Color clientColor = Colors.red;

