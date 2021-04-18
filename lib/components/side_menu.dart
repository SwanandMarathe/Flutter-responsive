import 'package:flutter/material.dart';
import 'package:flutter_2_application_responsive/widgets/nav_item.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 300,
      color: Colors.white,
      child: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              NavItem(
                title: 'Home',
                tapEvent: () {},
              ),
              SizedBox(height: 10),
              NavItem(
                title: 'Apps',
                tapEvent: () {},
              ),
              SizedBox(height: 10),
              NavItem(
                title: 'About',
                tapEvent: () {},
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
