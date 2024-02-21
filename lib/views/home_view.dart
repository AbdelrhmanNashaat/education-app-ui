import 'package:education_app_ui/constant.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'widgets/course_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: const TextStyle(
          fontSize: 16,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 14,
        ),
        iconSize: 28,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 4),
              child: Icon(FontAwesomeIcons.house),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 4),
              child: Icon(FontAwesomeIcons.clipboardList),
            ),
            label: 'Courses',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 4),
              child: Icon(Icons.favorite),
            ),
            label: 'Whitelist',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 4),
              child: Icon(FontAwesomeIcons.user),
            ),
            label: 'Account',
          ),
        ],
      ),
      backgroundColor: kWhiteColor,
      body: const SafeArea(
        child: HomeViewBody(),
      ),
    );
  }
}
