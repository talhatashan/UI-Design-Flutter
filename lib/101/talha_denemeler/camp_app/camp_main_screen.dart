import "package:flutter/material.dart";
import "package:uygulama_alistirmalari_2/101/list_tile_learn.dart";
import "package:uygulama_alistirmalari_2/101/talha_denemeler/camp_app/camp_second_page.dart";
import "package:uygulama_alistirmalari_2/101/talha_denemeler/travel_app.dart/page_view_1.dart";

class Camping extends StatelessWidget {
  const Camping({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return CampSecondPage();
            },
            fullscreenDialog: true,
            settings: RouteSettings(),
          ));
        },
        child: Icon(Icons.campaign),
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/png/campsite.png'), fit: BoxFit.cover)),
        child: SizedBox(
          height: 200,
          child: Column(
            children: [
              const Text(
                "CAMPER",
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 50),
              ),
              Text(
                "Listen your soul. Explore the campsites",
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.white),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
