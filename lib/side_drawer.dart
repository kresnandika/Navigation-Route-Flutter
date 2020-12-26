import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountEmail: Text('Avaraka18@gmail.com'),
                accountName: Text('AKMET AVARAKA'),
                otherAccountsPictures: [Icon(Icons.home), Icon(Icons.ac_unit)],
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://pbs.twimg.com/media/DBAAKz_U0AE4Coy.jpg'),
                ),
              ),
              ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home),
                onTap: () => Navigator.pushReplacementNamed(
                  context,
                  'home',
                ),
              ),
              ListTile(
                title: Text('Videos'),
                leading: Icon(Icons.personal_video),
                onTap: () => Navigator.pushNamed(
                  context,
                  'videos',
                ),
              ),
              ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings),
                onTap: () => Navigator.pushNamed(
                  context,
                  'settings',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
