import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:light_curve_app/config.dart';
import 'package:light_curve_app/pages/publish_page/container/container_notification.dart';

import 'auth/container/container_avatar.dart';
import 'gallery/container/container_gallery.dart';
import 'home/container/container_home.dart';
import 'publish_page/container/container_publish_page.dart';

class InitPage extends StatefulWidget {
  final void Function() initStreams;
  const InitPage({
    Key? key,
    required this.initStreams,
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
    widget.initStreams();

    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  final inactiveColor = Colors.grey[400];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(AssetsFile.logo),
        ),
        title: const Text('Light Curve'),
        actions: const [ContainerNotificationPage(), AvatarUser()],
        //   backgroundColor: primaryColor,
      ),
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: const <Widget>[
            ContainerHomePage(),
            /*   Center(
              child: AvatarCacheImage(
                radius: 60,
                urlPath: 'http://via.placeholder.com/350x150',
              ),
            ), */
            /*  CachedNetworkImage(
              imageUrl: 'http://via.placeholder.com/350x150',
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ), */
            ContainerPublishPage(),
            ContainerGalleryPage(),
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
              inactiveColor: inactiveColor,
              icon: const Icon(Icons.home)),
          BottomNavyBarItem(
            title: const Text('Publicar'),
            inactiveColor: inactiveColor,
            activeColor: Theme.of(context).primaryColor,
            icon: const Icon(Icons.video_call),
          ),
          BottomNavyBarItem(
            title: const Text('Galería'),
            activeColor: Theme.of(context).primaryColor,
            inactiveColor: inactiveColor,
            icon: const Icon(Icons.list),
          ),
        ],
      ),
    );
  }
}
