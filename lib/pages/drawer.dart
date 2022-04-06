import 'package:flutter/material.dart';
import 'package:navigation/pages/GaleryScreen.dart';
import 'package:navigation/pages/SongsScreen.dart';
import 'package:navigation/pages/ContactScreen.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(),
          _drawerItem(
              icon: Icons.folder,
              text: 'Galery',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(1);
                Navigator.pop(context);
              }),
          _drawerItem(
              icon: Icons.audiotrack,
              text: 'Songs',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(0);
                Navigator.pop(context);
              }),
          _drawerItem(
            icon: Icons.group,
            text: 'Contact',
            onTap: () {
              DefaultTabController.of(context)?.animateTo(2);
              Navigator.pop(context);
            },
          ),
          Divider(
            height: 25,
            thickness: 1,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
            child: Text(
              "Label",
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
          ),
          _drawerItem(
            icon: Icons.report,
            text: 'Report',
            onTap: () {
              DefaultTabController.of(context)?.animateTo(3);
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  Widget _drawerHeader() {
    return UserAccountsDrawerHeader(
      currentAccountPicture: ClipOval(
        child: Image(image: AssetImage('assets/images/profil.jpeg'), fit: BoxFit.cover),
      ),
      accountName: Text('Rikiansyah'),
      accountEmail: Text('rikiansyah.aris29@gmail.com'),
    );
  }

  Widget _drawerItem({required IconData icon, required String text, required GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      onTap: onTap,
    );
  }
}
