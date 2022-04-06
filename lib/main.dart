import 'package:flutter/material.dart';
import 'package:navigation/pages/drawer.dart';
import 'package:navigation/pages/GaleryScreen.dart';
import 'package:navigation/pages/SongsScreen.dart';
import 'package:navigation/pages/ContactScreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Belajar Drawer",
    theme: ThemeData(
      primarySwatch: Colors.blueGrey,
    ),
    home: BelajarNavigationDrawer(),
  ));
}

class BelajarNavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            title: Text("My Navigation"),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.audiotrack), text: "Songs"),
                Tab(icon: Icon(Icons.collections), text: "Gallery"),
                Tab(icon: Icon(Icons.person), text: "Contact"),
              ],
            )),
        drawer: MyDrawer(),
        body: TabBarView(
          children: <Widget>[
            SongsScreen(),
            GaleryScreen(),
            ContactScreen(),
          ],
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
      color: Colors.white,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
