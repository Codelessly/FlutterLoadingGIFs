import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:loading_gifs/loading_gifs.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Loading GIFS',
      builder: (context, widget) => ResponsiveWrapper.builder(widget,
          maxWidth: 1200,
          minWidth: 450,
          defaultScale: true,
          breakpoints: [
            ResponsiveBreakpoint(breakpoint: 450, name: MOBILE),
          ],
          background: Container(color: Color(0xFFF5F5F5))),
      home: CupertinoPageScaffold(
          child: CustomScrollView(
        shrinkWrap: true,
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: Text(
              "Loading GIFs",
              style: TextStyle(color: Color(0xFF1C1C1E)),
            ),
            backgroundColor: Colors.transparent,
            border: Border.all(style: BorderStyle.none),
            automaticallyImplyLeading: false,
          ),
          SliverList(
            delegate: SliverChildListDelegate.fixed(<Widget>[
              subHeaderText("Cupertino", subtitle: "iOS"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(6, 0, 6, 0),
                  child: Row(
                    children: <Widget>[
                      for (double i = 1; i <= 10; i++)
                        ShowcaseCard(
                          child:
                              Image.asset(cupertinoActivityIndicator, scale: i),
                          label: "Size ${i.round()}",
                        ),
                    ],
                  ),
                ),
              ),
              subHeaderText("Material", subtitle: "Android"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(6, 0, 6, 8),
                  child: Row(
                    children: <Widget>[
                      for (double i = 1; i <= 10; i++)
                        ShowcaseCard(
                          child:
                              Image.asset(circularProgressIndicator, scale: i),
                          label: "Size ${i.round()}",
                        ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ],
      )),
      debugShowCheckedModeBanner: false,
    );
  }
}

Widget subHeaderText(String title, {String subtitle}) {
  return Padding(
    padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        if (subtitle != null)
          Text(
            subtitle.toUpperCase(),
            style: TextStyle(
                color: Color(0xFF8E8E93),
                fontSize: 12,
                fontWeight: FontWeight.bold),
          ),
        Text(
          title,
          style: TextStyle(
              color: Color(0xFF3A3A3C),
              fontWeight: FontWeight.bold,
              fontSize: 24),
        ),
      ],
    ),
  );
}

class ShowcaseCard extends StatelessWidget {
  final Widget child;
  final double width;
  final String caption;
  final String label;

  const ShowcaseCard(
      {Key key,
      @required this.child,
      this.width = 200,
      this.caption,
      this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        if (label != null)
          Container(
            width: width,
            margin: EdgeInsets.only(bottom: 4),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                label,
                style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF3A3A3C),
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        Card(
          margin: EdgeInsets.fromLTRB(12, 4, 12, 24),
          elevation: kIsWeb ? 8 : 10,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          shadowColor: kIsWeb
              ? Color.fromARGB(72, 178, 178, 178)
              : Color.fromARGB(156, 178, 178, 178),
          child: Container(
            width: width,
            height: width,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                child,
                if (caption != null)
                  Positioned(
                    left: 0,
                    bottom: 0,
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(12)),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                        child: Container(
                          width: width,
                          height: 30,
                          color: Colors.white30,
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              caption,
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF8E8E93),
                                  fontStyle: FontStyle.italic),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
