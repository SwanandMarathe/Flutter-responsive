import 'package:flutter/material.dart';
import 'package:flutter_2_application_responsive/components/side_menu.dart';
import 'package:flutter_2_application_responsive/screens/mobile_home_screen.dart';
import 'package:flutter_2_application_responsive/screens/tab_home_screen.dart';
import 'package:flutter_2_application_responsive/utils/responsive_layout.dart';
import 'package:flutter_2_application_responsive/widgets/nav_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFF8FBFF),
            Color(0xFFFCFDFD),
          ],
        ),
      ),
      child: Scaffold(
        endDrawer: Container(
          // constraints: BoxConstraints(maxWidth: 300),
          child: SideMenu(),
        ),
        endDrawerEnableOpenDragGesture: false,
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                NavBar(),
                Body(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileScreen: MobileHomeScreen(),
      tabScreen: TabHomeScreen(),
      desktopScreen: TabHomeScreen(),
    );
  }
}
