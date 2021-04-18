import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget desktopScreen;
  final Widget tabScreen;
  final Widget mobileScreen;

  const ResponsiveLayout({
    Key key,
    this.desktopScreen,
    this.tabScreen,
    this.mobileScreen,
  }) : super(key: key);

  static bool ismobileScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 700;
  }

  static bool istabScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 700 &&
        MediaQuery.of(context).size.width < 1200;
  }

  static bool isdesktopScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 1200;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 1200) {
          return desktopScreen ?? mobileScreen;
        } else if (constraints.maxWidth < 1200 && constraints.maxWidth > 800) {
          return tabScreen ?? mobileScreen;
        } else {
          return mobileScreen;
        }
      },
    );
  }
}

EdgeInsetsGeometry responsivePadding(BuildContext context) {
  double deviceWidth = MediaQuery.of(context).size.width;
  if (deviceWidth < 700) {
    return EdgeInsets.symmetric(horizontal: 20.0, vertical: 00.0);
  } else if (deviceWidth < 1200) {
    return EdgeInsets.symmetric(horizontal: 50.0, vertical: 25.0);
  } else if (deviceWidth < 1650) {
    return EdgeInsets.symmetric(horizontal: 80.0, vertical: 40.0);
  }
  return EdgeInsets.symmetric(horizontal: 100.0, vertical: 50.0);
}

int responsiveNumGridTiles(BuildContext context) {
  double deviceWidth = MediaQuery.of(context).size.width;
  if (deviceWidth < 700) {
    return 1;
  } else if (deviceWidth < 1200) {
    return 2;
  } else if (deviceWidth < 1650) {
    return 3;
  }
  return 4;
}

double responsiveImageHeight(BuildContext context) {
  double deviceWidth = MediaQuery.of(context).size.width;
  if (deviceWidth < 700) {
    return 120.0;
  } else if (deviceWidth < 1200) {
    return MediaQuery.of(context).size.width * 0.12;
  } else if (deviceWidth < 1650) {
    return MediaQuery.of(context).size.width * 0.07;
  }
  return MediaQuery.of(context).size.width * 0.05;
}

double responsiveTitleHeight(BuildContext context) {
  double deviceWidth = MediaQuery.of(context).size.width;
  if (deviceWidth < 700) {
    return 160.0;
  } else if (deviceWidth < 1200) {
    return MediaQuery.of(context).size.width * 0.20;
  } else if (deviceWidth < 1650) {
    return MediaQuery.of(context).size.width * 0.19;
  }
  return MediaQuery.of(context).size.width * 0.14;
}
