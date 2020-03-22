import 'dart:async';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:loading_gifs/loading_gifs.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ScrollController scrollController;
  Timer scrollTimer;
  bool scrolling = false;
  bool firstScrollStart = true;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Loading GIFS',
      home: CupertinoPageScaffold(
        child: Stack(
          children: <Widget>[
            CustomScrollView(
              shrinkWrap: true,
              slivers: <Widget>[
                SliverList(
                  delegate: SliverChildListDelegate.fixed(<Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 200),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        controller: scrollController,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(6, 0, 6, 0),
                          child: Row(
                            children: <Widget>[
                              for (double i = 1; i <= 10; i++)
                                Container(
                                  width: 400,
                                  height: 400,
                                  child: Image.asset(cupertinoActivityIndicator,
                                      scale: i, width: 400, height: 400),
                                ),
                              for (double i = 9; i >= 2; i--)
                                Container(
                                  width: 400,
                                  height: 400,
                                  child: Image.asset(cupertinoActivityIndicator,
                                      scale: i, width: 400, height: 400),
                                ),
                              for (double i = 1; i <= 10; i++)
                                Container(
                                  width: 400,
                                  height: 400,
                                  child: Image.asset(cupertinoActivityIndicator,
                                      scale: i, width: 400, height: 400),
                                ),
                              for (double i = 9; i >= 1; i--)
                                Container(
                                  width: 400,
                                  height: 400,
                                  child: Image.asset(cupertinoActivityIndicator,
                                      scale: i, width: 400, height: 400),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ],
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Material(
                    child: IconButton(
                      onPressed: () => scrolling ? stopScroll() : startScroll(),
                      icon: scrolling
                          ? Icon(null, color: Color(0xFFDFDFDF))
                          : Icon(Icons.play_circle_outline,
                              color: Color(0xFFDFDFDF)),
                      iconSize: 48,
                    ),
                  ),
                  Material(
                    child: IconButton(
                      onPressed: () => resetScroll(),
                      icon: scrolling
                          ? Icon(null, color: Color(0xFFDFDFDF))
                          : Icon(Icons.replay, color: Color(0xFFDFDFDF)),
                      iconSize: 48,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  void startScroll() {
    if (firstScrollStart) {
      firstScrollStart = false;
      Future.delayed(Duration(seconds: 1), () => startScroll());
      return;
    }
    if (kIsWeb) {
      // Timer Method.
      scrollTimer = Timer.periodic(
          Duration(microseconds: ((1 / 30) * 1000).round()), (timer) {
        if (scrollController.offset >=
            scrollController.position.maxScrollExtent) {
          stopScroll();
        }
        scrollController.jumpTo(scrollController.offset + 10);
      });
    } else {
      // Scroll Controller Method.
      scrollController
          .animateTo(scrollController.offset + 2000,
              duration: Duration(seconds: 3), curve: Curves.linear)
          .then((value) {
        print("Continue scroll");
        if (scrolling == false ||
            scrollController.offset >=
                scrollController.position.maxScrollExtent) {
          stopScroll();
        } else {
          startScroll();
        }
      });
    }

    setState(() {
      scrolling = true;
    });
  }

  void stopScroll() {
    print("Stop scroll");
    if (kIsWeb) {
      // Timer Method.
      scrollTimer.cancel();
    } else {
      // Scroll Controller Method.
      scrollController.animateTo(scrollController.offset,
          duration: Duration(seconds: 0), curve: Curves.linear);
    }

    setState(() {
      scrolling = false;
    });
  }

  void resetScroll() {
    print("Reset scroll");
    stopScroll();
    firstScrollStart = true;
    scrollController.jumpTo(0);
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
