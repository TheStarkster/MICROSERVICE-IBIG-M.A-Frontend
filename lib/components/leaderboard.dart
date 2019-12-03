import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:theme_provider/theme_provider.dart';

class LeaderTabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 40),
            Row(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 3,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            CircleAvatar(
                              radius: 38,
                              child: ClipRRect(
                                borderRadius: new BorderRadius.circular(100.0),
                                child: Image.network(
                                  'http://www.thatnatejones.com/images/natejones.jpg',
                                  alignment: Alignment.topLeft,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 8, bottom: 4),
                              child: Text(
                                "Player2 Name",
                                style: TextStyle(
                                  color:
                                      Theme.of(context).textTheme.subhead.color,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(FontAwesomeIcons.medal,
                                    size: 12,
                                    color: Theme.of(context)
                                        .textTheme
                                        .subhead
                                        .color),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 4, left: 5),
                                  child: Text(
                                    "Platinum",
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .textTheme
                                          .subhead
                                          .color,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 18, right: 18),
                              child: Divider(
                                  color: Theme.of(context).dividerColor),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(FontAwesomeIcons.rupeeSign,
                                    size: 14,
                                    color: Theme.of(context)
                                        .textTheme
                                        .subhead
                                        .color),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 4, left: 2),
                                  child: Text(
                                    "Earned",
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .textTheme
                                          .subhead
                                          .color,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 4),
                              child: Text(
                                "34,344",
                                style: TextStyle(
                                  color:
                                      Theme.of(context).textTheme.subhead.color,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 52,
                              child: ClipRRect(
                                borderRadius: new BorderRadius.circular(100.0),
                                child: Image.network(
                                  'https://www.atlassian.com/dam/jcr:ba03a215-2f45-40f5-8540-b2015223c918/Max-R_Headshot%20(1).jpg',
                                  alignment: Alignment.topLeft,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 8, bottom: 4),
                              child: Text(
                                "Player1 Name",
                                style: TextStyle(
                                  color:
                                      Theme.of(context).textTheme.subhead.color,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(FontAwesomeIcons.medal,
                                    size: 12,
                                    color: Theme.of(context)
                                        .textTheme
                                        .subhead
                                        .color),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 4, left: 5),
                                  child: Text(
                                    "Platinum",
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .textTheme
                                          .subhead
                                          .color,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 18, right: 18),
                              child: Divider(
                                  color: Theme.of(context).dividerColor),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(FontAwesomeIcons.rupeeSign,
                                    size: 14,
                                    color: Theme.of(context)
                                        .textTheme
                                        .subhead
                                        .color),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 4, left: 2),
                                  child: Text(
                                    "Earned",
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .textTheme
                                          .subhead
                                          .color,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 4),
                              child: Text(
                                "34,344",
                                style: TextStyle(
                                  color:
                                      Theme.of(context).textTheme.subhead.color,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            CircleAvatar(
                              radius: 38,
                              child: ClipRRect(
                                borderRadius: new BorderRadius.circular(100.0),
                                child: Image.network(
                                  'https://developers.google.com/web/images/contributors/philipwalton.jpg',
                                  alignment: Alignment.topLeft,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 8, bottom: 4),
                              child: Text(
                                "Player3 Name",
                                style: TextStyle(
                                  color:
                                      Theme.of(context).textTheme.subhead.color,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(FontAwesomeIcons.medal,
                                    size: 12,
                                    color: Theme.of(context)
                                        .textTheme
                                        .subhead
                                        .color),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 4, left: 5),
                                  child: Text(
                                    "Platinum",
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .textTheme
                                          .subhead
                                          .color,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 18, right: 18),
                              child: Divider(
                                  color: Theme.of(context).dividerColor),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(FontAwesomeIcons.rupeeSign,
                                    size: 14,
                                    color: Theme.of(context)
                                        .textTheme
                                        .subhead
                                        .color),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 4, left: 2),
                                  child: Text(
                                    "Earned",
                                    style: TextStyle(
                                        color: Theme.of(context)
                                            .textTheme
                                            .subhead
                                            .color,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 4),
                              child: Text(
                                "34,344",
                                style: TextStyle(
                                  color:
                                      Theme.of(context).textTheme.subhead.color,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 12, bottom: 24),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "Others",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Theme.of(context).textTheme.subhead.color,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            WinnerCard(),
            WinnerCard(),
            WinnerCard(),
            WinnerCard(),
            WinnerCard(),
          ],
        ),
      ),
    );
  }
}

class WinnerCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: EdgeInsets.only(left: 14, right: 14, bottom: 14),
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: new BorderRadius.circular(100.0),
            child: Image.network(
              'https://www.microsoft.com/en-us/research/wp-content/uploads/2017/09/avatar_user_36443_1506533427.jpg',
              alignment: Alignment.topLeft,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 8, left: 18),
                child: Text(
                  "#4",
                  style: TextStyle(
                      fontSize: 18,
                      color: Theme.of(context).textTheme.subhead.color),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 2, left: 18),
                child: Text(
                  "Player Name",
                  style: TextStyle(
                    fontSize: 14,
                    color: Theme.of(context).textTheme.subhead.color,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 18, top: 2),
                child: Row(
                  children: <Widget>[
                    Icon(FontAwesomeIcons.rupeeSign,
                        size: 14,
                        color: Theme.of(context).textTheme.subhead.color),
                    Padding(
                      padding: EdgeInsets.only(top: 2, left: 2),
                      child: Text(
                        "68465",
                        style: TextStyle(
                          color: Theme.of(context).textTheme.subhead.color,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(100),
          bottomLeft: Radius.circular(100),
          bottomRight: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        color: Theme.of(context).cardColor,
      ),
    );
  }
}

class LeaderBoard extends StatefulWidget {
  @override
  _LeaderBoardState createState() => _LeaderBoardState();
}

class _LeaderBoardState extends State<LeaderBoard> {
  @override
  Widget build(BuildContext context) {
    List<Widget> _tabScroll() => [
          Tab(
            child: Container(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 5),
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/loginlogo.png',
                      width: 70,
                    ),
                    Text(
                      "ALL",
                      style: TextStyle(
                          color: Theme.of(context).textTheme.overline.color),
                    ),
                  ],
                ),
              ),
            ),
          ),
          
          Tab(
            child: Container(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 5),
                child: Column(
                  children: <Widget>[
                    Image.network(
                      'https://i.pinimg.com/originals/91/57/ef/9157efb8306f24a414205f6ec622a61c.png',
                      width: 70,
                    ),
                    Text(
                      "POOL",
                      style: TextStyle(
                          color: Theme.of(context).textTheme.overline.color),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Tab(
            child: Container(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 5),
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/basket.png',
                      width: 70,
                    ),
                    Text(
                      "BASKET BALL",
                      style: TextStyle(
                          color: Theme.of(context).textTheme.overline.color),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Tab(
            child: Container(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 5),
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/rummy.png',
                      width: 70,
                    ),
                    Text(
                      "RUMMY",
                      style: TextStyle(
                          color: Theme.of(context).textTheme.overline.color),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Tab(
            child: Container(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 5),
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/candy.png',
                      width: 70,
                    ),
                    Text(
                      "CANDY",
                      style: TextStyle(
                          color: Theme.of(context).textTheme.overline.color),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Tab(
            child: Container(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 5),
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/archery.png',
                      width: 70,
                    ),
                    Text(
                      "ARCHERY",
                      style: TextStyle(
                          color: Theme.of(context).textTheme.overline.color),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Tab(
            child: Container(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 5),
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/angrybirds.png',
                      width: 70,
                    ),
                    Text(
                      "ANGRY BIRDS",
                      style: TextStyle(
                          color: Theme.of(context).textTheme.overline.color),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Tab(
            child: Container(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 5),
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/Qapp.png',
                      width: 70,
                    ),
                    Text(
                      "QUES",
                      style: TextStyle(
                          color: Theme.of(context).textTheme.overline.color),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Tab(
            child: Container(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 5),
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/riseup.png',
                      width: 70,
                    ),
                    Text(
                      "RISE UP",
                      style: TextStyle(
                          color: Theme.of(context).textTheme.overline.color),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Tab(
            child: Container(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 5),
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/cricket.png',
                      width: 70,
                    ),
                    Text(
                      "CRICKET",
                      style: TextStyle(
                          color: Theme.of(context).textTheme.overline.color),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Tab(
            child: Container(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 5),
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/bubble.png',
                      width: 70,
                    ),
                    Text(
                      "BUBBLE SHOOTER",
                      style: TextStyle(
                          color: Theme.of(context).textTheme.overline.color),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Tab(
            child: Container(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 5),
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/spacemaker.png',
                      width: 70,
                    ),
                    Text(
                      "SPACE BREAKER",
                      style: TextStyle(
                          color: Theme.of(context).textTheme.overline.color),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Tab(
            child: Container(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 5),
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/happyjump.png',
                      width: 70,
                    ),
                    Text(
                      "HAPPY JUMP",
                      style: TextStyle(
                          color: Theme.of(context).textTheme.overline.color),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Tab(
            child: Container(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 5),
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/ludo.png',
                      width: 70,
                    ),
                    Text(
                      "LUDO",
                      style: TextStyle(
                          color: Theme.of(context).textTheme.overline.color),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Tab(
            child: Container(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 5),
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/pool.png',
                      width: 70,
                    ),
                    Text(
                      "CAR RACE",
                      style: TextStyle(
                          color: Theme.of(context).textTheme.overline.color),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Tab(
            child: Container(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 5),
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/fruit.png',
                      width: 70,
                    ),
                    Text(
                      "FRUIT CHOP",
                      style: TextStyle(
                          color: Theme.of(context).textTheme.overline.color),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Tab(
            child: Container(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 5),
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/lodosnack.jpeg',
                      width: 70,
                    ),
                    Text(
                      "LUDO SNACK",
                      style: TextStyle(
                          color: Theme.of(context).textTheme.overline.color),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Tab(
            child: Container(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 5),
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/runner.jpg',
                      width: 70,
                    ),
                    Text(
                      "RUNNER",
                      style: TextStyle(
                          color: Theme.of(context).textTheme.overline.color),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Tab(
            child: Container(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 5),
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/trun.png',
                      width: 70,
                    ),
                    Text(
                      "TEMPLE RUN",
                      style: TextStyle(
                          color: Theme.of(context).textTheme.overline.color),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ];
    return ThemeProvider(
      child: Scaffold(
        body: DefaultTabController(
          length: 19,
          child: Column(
            children: <Widget>[
              Container(
                height: 100,
                child: TabBar(
                  indicatorColor: Theme.of(context).indicatorColor,
                  isScrollable: true,
                  tabs: _tabScroll(),
                ),
              ),
              Expanded(
                child: Container(
                  child: TabBarView(children: [
                    LeaderTabView(),
                    LeaderTabView(),
                    LeaderTabView(),
                    LeaderTabView(),
                    LeaderTabView(),
                    LeaderTabView(),
                    LeaderTabView(),
                    LeaderTabView(),
                    LeaderTabView(),
                    LeaderTabView(),
                    LeaderTabView(),
                    LeaderTabView(),
                    LeaderTabView(),
                    LeaderTabView(),
                    LeaderTabView(),
                    LeaderTabView(),
                    LeaderTabView(),
                    LeaderTabView(),
                    LeaderTabView(),
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
