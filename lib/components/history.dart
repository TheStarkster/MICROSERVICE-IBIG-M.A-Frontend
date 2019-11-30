import 'package:flutter/material.dart';
import 'package:theme_provider/theme_provider.dart';

class Recent extends StatefulWidget {
  @override
  _RecentState createState() => _RecentState();
}

class _RecentState extends State<Recent> {
  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      child: Scaffold(
        body: DefaultTabController(
          length: 2,
          child: Column(
            children: <Widget>[
              Container(
                constraints: BoxConstraints.expand(height: 50),
                child: TabBar(
                  indicatorColor: Theme.of(context).indicatorColor,
                  tabs: [
                    Tab(
                      child: Text(
                        "Live",
                        style: TextStyle(color: Theme.of(context).textTheme.overline.color),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Completed",
                        style: TextStyle(color: Theme.of(context).textTheme.overline.color),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  child: TabBarView(children: [
                    Container(
                      child: ListView(
                        padding: const EdgeInsets.all(8),
                        children: <Widget>[
                          Container(
                            height: 80,
                            child: Row(
                              children: <Widget>[
                                Image.network(
                                    'https://i.pinimg.com/originals/91/57/ef/9157efb8306f24a414205f6ec622a61c.png',
                                    width: 150,
                                    alignment: Alignment.topLeft),
                                Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(top: 12),
                                        child: Text(
                                          "POOL",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Theme.of(context).textTheme.subhead.color,
                                              fontSize: 16),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 2),
                                        child: Text(
                                          "WON Rs. 457",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: Theme.of(context).textTheme.subhead.color,
                                              fontSize: 12),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Text(
                                          "LIVE",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              color: Colors.green[300],
                                              fontSize: 12),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            margin: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Theme.of(context).cardColor,
                            ),
                          ),
                          Container(
                            height: 80,
                            child: Row(
                              children: <Widget>[
                                Image.network(
                                    'https://lh3.googleusercontent.com/eJ9OJnbRer1jjg5ZeNAnTXKcGd2B_NEqxCp2UsefcCABeFBaj_pNl_WKYBjup2GVGGc',
                                    width: 150,
                                    alignment: Alignment.topLeft),
                                Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(top: 12),
                                        child: Text(
                                          "FRUIT CHOP",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Theme.of(context).textTheme.subhead.color,
                                              fontSize: 16),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 2),
                                        child: Text(
                                          "WON Rs. 457",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: Theme.of(context).textTheme.subhead.color,
                                              fontSize: 12),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Text(
                                          "LIVE",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              color: Colors.green[300],
                                              fontSize: 12),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            margin: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Theme.of(context).cardColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: ListView(
                        padding: const EdgeInsets.all(8),
                        children: <Widget>[
                          Container(
                            height: 80,
                            child: Row(
                              children: <Widget>[
                                Image.network(
                                    'https://i.pinimg.com/originals/91/57/ef/9157efb8306f24a414205f6ec622a61c.png',
                                    width: 150,
                                    alignment: Alignment.topLeft),
                                Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(top: 12),
                                        child: Text(
                                          "POOL",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Theme.of(context).textTheme.subhead.color,
                                              fontSize: 16),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 2),
                                        child: Text(
                                          "WON Rs. 457",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: Theme.of(context).textTheme.subhead.color,
                                              fontSize: 12),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Text(
                                          "Played 2w Ago",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              color: Theme.of(context).textTheme.subhead.color,
                                              fontSize: 12),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            margin: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Theme.of(context).cardColor,
                            ),
                          ),
                          Container(
                            height: 80,
                            child: Row(
                              children: <Widget>[
                                Image.network(
                                    'https://lh3.googleusercontent.com/eJ9OJnbRer1jjg5ZeNAnTXKcGd2B_NEqxCp2UsefcCABeFBaj_pNl_WKYBjup2GVGGc',
                                    width: 150,
                                    alignment: Alignment.topLeft),
                                Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(top: 12),
                                        child: Text(
                                          "FRUIT CHOP",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Theme.of(context).textTheme.subhead.color,
                                              fontSize: 16),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 2),
                                        child: Text(
                                          "WON Rs. 457",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: Theme.of(context).textTheme.subhead.color,
                                              fontSize: 12),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Text(
                                          "Played 2w Ago",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              color: Theme.of(context).textTheme.subhead.color,
                                              fontSize: 12),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            margin: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Theme.of(context).cardColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// //
