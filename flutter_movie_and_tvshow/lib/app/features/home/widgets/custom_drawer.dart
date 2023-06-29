import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color(0xFF2A2937),
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            DrawerHeader(
              margin: EdgeInsets.only(bottom: 0),
              padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: Text(
                'MOVIES',
                style: TextStyle(color: Colors.amber, fontSize: 25),
              ),
            ),
            ListTile(
              title: Text(
                'Menu',
                style: TextStyle(color: Colors.amber, fontSize: 16),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.person_2_outlined,
                color: Colors.white,
              ),
              title: Text(
                'Profile',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.favorite_rounded,
                color: Colors.white,
              ),
              title: Text(
                'Favorite',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.movie_creation_outlined,
                color: Colors.white,
              ),
              title: Text(
                'Watchtlist',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.download,
                color: Colors.white,
              ),
              title: Text(
                'Download',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            ListTile(
              title: Text(
                'General',
                style: TextStyle(color: Colors.amber, fontSize: 16),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              title: Text(
                'Settings',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.logout_outlined,
                color: Colors.white,
              ),
              title: Text(
                'Log Out',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
