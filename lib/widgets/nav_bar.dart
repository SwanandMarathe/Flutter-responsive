import 'package:flutter/material.dart';
import 'package:flutter_2_application_responsive/utils/responsive_layout.dart';
import 'package:flutter_2_application_responsive/widgets/nav_item.dart';

class NavBar extends StatelessWidget {
  Widget headerForTab() {
    return Row(
      children: [
        NavItem(
          title: 'Home',
          tapEvent: () {},
        ),
        NavItem(
          title: 'Apps',
          tapEvent: () {},
        ),
        NavItem(
          title: 'About',
          tapEvent: () {},
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        children: [
          Image.asset(
            'assets/images/logo.jpg',
            width: 50,
          ),
          SizedBox(width: 10),
          Text(
            "Swa",
            style: TextStyle(fontSize: 18),
          ),
          Spacer(),
          if (ResponsiveLayout.ismobileScreen(context)) ...{
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
            )
          } else ...{
            headerForTab()
          }
        ],
      ),
    );
  }
}
