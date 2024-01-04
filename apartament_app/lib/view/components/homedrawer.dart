import 'package:apartament_app/style/colors.dart';
import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueprimary,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.home_outlined,
                color: Colors.white,
                size: 30,
              ),
              title: Text(
                'Home',
                style: TextStyle(
                    color: Colors.white, fontFamily: "Raleway", fontSize: 18),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.person_outline_rounded,
                color: Colors.white,
                size: 30,
              ),
              title: Text(
                'Profile',
                style: TextStyle(
                    color: Colors.white, fontFamily: "Raleway", fontSize: 18),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.location_on_outlined,
                color: Colors.white,
              ),
              title: Text(
                'Nearby',
                style: TextStyle(
                    color: Colors.white, fontFamily: "Raleway", fontSize: 18),
              ),
            ),
            Divider(
              color: Colors.white,
            ),
             ListTile(
              onTap: () {},
              leading: Icon(
                Icons.bookmark_border_outlined,
                color: Colors.white,
              ),
              title: Text(
                'Bookmark',
                style: TextStyle(
                    color: Colors.white, fontFamily: "Raleway", fontSize: 18),
              ),
            ),
             ListTile(
              onTap: () {},
              leading: Icon(
                Icons.notifications_outlined,
                color: Colors.white,
              ),
              title: Text(
                'Notification',
                style: TextStyle(
                    color: Colors.white, fontFamily: "Raleway", fontSize: 18),
              ),
            ),
             ListTile(
              onTap: () {},
              leading: Icon(
                Icons.message_outlined,
                color: Colors.white,
              ),
              title: Text(
                'Message',
                style: TextStyle(
                    color: Colors.white, fontFamily: "Raleway", fontSize: 18),
              ),
            ),
             Divider(
              color: Colors.white,
            ),
             ListTile(
              onTap: () {},
              leading: Icon(
                Icons.settings_outlined,
                color: Colors.white,
              ),
              title: Text(
                'Setting',
                style: TextStyle(
                    color: Colors.white, fontFamily: "Raleway", fontSize: 18),
              ),
            ),
             ListTile(
              onTap: () {},
              leading: Icon(
                Icons.help_outline,
                color: Colors.white,
              ),
              title: Text(
                'Help',
                style: TextStyle(
                    color: Colors.white, fontFamily: "Raleway", fontSize: 18),
              ),
            ),
             ListTile(
              onTap: () {},
              leading: Icon(
                Icons.power_settings_new_rounded,
                color: Colors.white,
              ),
              title: Text(
                'Logout',
                style: TextStyle(
                    color: Colors.white, fontFamily: "Raleway", fontSize: 18),
              ),
            ),
             
            

          ],
        ),
      ),
    );
  }
}