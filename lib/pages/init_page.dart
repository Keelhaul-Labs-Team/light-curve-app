import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

import 'publish_page/container/container_publish_page.dart';

class InitPage extends StatefulWidget {
  const InitPage({
    Key? key,
  }) : super(key: key);

  @override
  _InitPageState createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  final primaryColor = const Color(0xff4F7BE3);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Light Curve'),
        //   backgroundColor: primaryColor,
      ),
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: const <Widget>[
            Center(child: Icon(Icons.home)),
            ContainerPublishPage(),
            Center(child: Icon(Icons.list)),
            /* ContainerHomePage(),
            ContainerEmailsSendedPage(),
            ContainerMessagesPage(), */
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
              title: const Text('Inicio'),
              activeColor: Theme.of(context).primaryColor,
              inactiveColor: primaryColor,
              icon: const Icon(Icons.home)),
          BottomNavyBarItem(
            title: const Text('Publicar'),
            inactiveColor: primaryColor,
            activeColor: Theme.of(context).primaryColor,
            icon: const Icon(Icons.video_call),
          ),
          BottomNavyBarItem(
            title: const Text('Galería'),
            activeColor: Theme.of(context).primaryColor,
            inactiveColor: primaryColor,
            icon: const Icon(Icons.list),
          ),
        ],
      ),
    );
  }
}
