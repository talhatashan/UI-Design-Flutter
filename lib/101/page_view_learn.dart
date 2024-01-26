import "package:flutter/material.dart";
import "package:uygulama_alistirmalari_2/101/card_learn.dart";
import "package:uygulama_alistirmalari_2/101/image_learn.dart";
import "package:uygulama_alistirmalari_2/101/odev.dart";

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({super.key});

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final _pageController = PageController(viewportFraction: 0.7);
  int _currentPageIndex = 0;

  void pageIndexShow(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [previousPageMethod(), nextPageMethod(), Text(_currentPageIndex.toString())],
      ),
      appBar: AppBar(),
      body: PageView(
        onPageChanged: pageIndexShow,
        controller: _pageController,
        children: const [CardLearnWiew(), ImageLearnWiew(), FirsHomeWork()],
      ),
    );
  }

  FloatingActionButton nextPageMethod() {
    return FloatingActionButton(
      onPressed: () {
        _pageController.nextPage(duration: const Duration(seconds: 1), curve: Curves.linear);
      },
      child: const Icon(Icons.skip_next),
    );
  }

  FloatingActionButton previousPageMethod() {
    return FloatingActionButton(
      onPressed: () {
        _pageController.previousPage(duration: const Duration(seconds: 1), curve: Curves.linear);
      },
      child: const Icon(Icons.skip_previous),
    );
  }
}
