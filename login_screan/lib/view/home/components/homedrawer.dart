import 'package:flutter/material.dart';
import 'package:login_screan/repositoris/repositor.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    var _singoutaction = Repositor();
    return  Drawer(
      shape: Border.all(width: 0),
      child: Center(
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Sing Out'),
              onTap: () {
                _singoutaction.SingOut();
              },
            )
          ],
        ),
      ),
    );
  }
}