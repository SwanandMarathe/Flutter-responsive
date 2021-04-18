import 'package:flutter/material.dart';
import 'package:flutter_2_application_responsive/constants.dart';
import 'package:flutter_2_application_responsive/globals.dart';
import 'package:flutter_2_application_responsive/models/app_model.dart';
import 'package:flutter_2_application_responsive/widgets/apps_grid.dart';

class MobileHomeScreen extends StatefulWidget {
  @override
  _MobileHomeScreenState createState() => _MobileHomeScreenState();
}

class _MobileHomeScreenState extends State<MobileHomeScreen> {
  @override
  void initState() {
    super.initState();
    _fetchArticles();
  }

  _fetchArticles() {
    List<AppModel> _myApps = [];
    for (var item in appsData) {
      _myApps.add(AppModel.fromMap(item));
    }

    setState(() {
      Globals.myApps = _myApps;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/images/DSC01242.JPG',
                    height: size.height * 0.3,
                  ),
                  SizedBox(height: 10),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Hi, I am ',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w800,
                            color: kTextColor,
                          ),
                        ),
                        TextSpan(
                          text: 'Swanand Marathe',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w800,
                            color: kPrimaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'A Mobile Application Developer',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(height: 10),
                  Globals.myApps.length > 0
                      ? AppsGridLayout()
                      : Center(
                          child: CircularProgressIndicator(),
                        ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
