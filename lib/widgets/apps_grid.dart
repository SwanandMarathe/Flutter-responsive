import 'package:flutter/material.dart';
import 'package:flutter_2_application_responsive/globals.dart';
import 'package:flutter_2_application_responsive/models/app_model.dart';
import 'package:flutter_2_application_responsive/utils/responsive_layout.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class AppsGridLayout extends StatefulWidget {
  @override
  _AppsGridLayoutState createState() => _AppsGridLayoutState();
}

class _AppsGridLayoutState extends State<AppsGridLayout> {
  _buildArticlesGrid(BuildContext context) {
    List<GridTile> tiles = [];
    Globals.myApps.forEach((article) {
      tiles.add(_buildArticleTile(article, context));
    });
    return Padding(
      padding: responsivePadding(context),
      child: GridView.count(
        crossAxisCount: responsiveNumGridTiles(context),
        mainAxisSpacing: 30.0,
        crossAxisSpacing: 30.0,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: tiles,
      ),
    );
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _buildArticleTile(AppModel app, BuildContext context) {
    return GridTile(
      child: GestureDetector(
        onTap: () {},
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                // padding: EdgeInsets.only(top: 20, bottom: 20),
                // height: responsiveImageHeight(context),
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                  image: DecorationImage(
                    image: NetworkImage(app.imageUrl),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              alignment: Alignment.center,
              // height: responsiveTitleHeight(context),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0, 1),
                    blurRadius: 6.0,
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    app.title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                  ),
                  SizedBox(height: 10),
                  Text(
                    app.summary,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      if (app.iosurl.isNotEmpty) ...{
                        IconButton(
                          // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                          icon: FaIcon(FontAwesomeIcons.appStore),
                          iconSize: 30,
                          onPressed: () {
                            _launchURL(app.iosurl);
                          },
                        ),
                      },
                      if (app.androidurl.isNotEmpty) ...{
                        IconButton(
                          // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                          icon: FaIcon(FontAwesomeIcons.googlePlay),
                          iconSize: 30,
                          onPressed: () {
                            _launchURL(app.androidurl);
                          },
                        ),
                      }
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildArticlesGrid(context);
  }
}
