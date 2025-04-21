import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 10.0,
        centerTitle: true,
        title: const Text(
          'Notes App',
          style: TextStyle(
            color: Colors.black,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        bottom: const TabBar(
          tabs: <Widget>[
            Tab(
              icon: Icon(
                FontAwesomeIcons.userDoctor,
              ),
              child: Text(
                'Profile',
              ),
            ),
            Tab(
              icon: Icon(
                FontAwesomeIcons.house,
              ),
              child: Text(
                'Home',
              ),
            ),
            Tab(
              icon: Icon(
                FontAwesomeIcons.gear,
              ),
              child: Text(
                'Settings',
              ),
            ),
          ],
        ),
      );
  }
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
