import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:navigation_among_three_screens/screens/home_screen.dart';
import 'package:navigation_among_three_screens/screens/profile_screen.dart';
import 'package:navigation_among_three_screens/screens/settings_screen.dart';


class CustomTabBar extends StatelessWidget {
  const CustomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
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
        ),
        body:const TabBarView(
          children: <Widget>
          [
            ProfileScreen(),
            HomeScreen(),
            SettingsScreen(),
          ],
        ),
      ),
    );
  }
}

