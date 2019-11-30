import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibig_play/main.dart';
import 'package:theme_provider/theme_provider.dart';
import 'package:ibig_play/components/home.dart';
import 'package:ibig_play/components/leaderboard.dart';
import 'package:ibig_play/components/history.dart';
import 'package:ibig_play/components/pages/chats.dart';
import 'package:ibig_play/components/wallet.dart';

class OtherPage extends StatefulWidget {
  final List<CameraDescription> cameras;
  OtherPage(this.cameras);
  @override
  _OtherPageState createState() => _OtherPageState();
}

class _OtherPageState extends State<OtherPage>
    with SingleTickerProviderStateMixin {
  int _currentIndex = 0;

  TabController _tabController;
  List<Widget> _tabList = [
    ThemeConsumer(child: HomeContent()),
    ThemeConsumer(child: Recent()),
    ThemeConsumer(child: LeaderBoard()),
    ThemeConsumer(child: Chats(cameras)),
    ThemeConsumer(child: Wallet()),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: _tabList.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ThemeConsumer(
        child: Scaffold(
          appBar: _currentIndex != 3 ? AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    child: Material(
                      color: Theme.of(context).primaryColorDark,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 8, right: 8, top: 6, bottom: 6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Icon(FontAwesomeIcons.coins,
                                color: Colors.white70, size: 16),
                            Text(
                              "30",
                              style: TextStyle(color: Colors.white),
                            ),
                            Material(
                                child: Padding(
                                  padding: EdgeInsets.all(3),
                                  child: Icon(FontAwesomeIcons.plus,
                                      color: Colors.white, size: 16),
                                ),
                                shape: CircleBorder(),
                                color: Theme.of(context).focusColor)
                          ],
                        ),
                      ),
                      shape: StadiumBorder(),
                    ),
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => coins.BuysCoin()));
                    },
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => profile.Profile()));
                    },
                    child: CircleAvatar(
                      radius: 24,
                      backgroundColor: Color(0xFF320073),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            child: ClipRRect(
                              borderRadius: new BorderRadius.circular(100.0),
                              child: Image.network(
                                  'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80'),
                            ),
                          ),
                          Positioned(
                            child: Icon(FontAwesomeIcons.trophy,
                                size: 18, color: Color(0xFFcd7f32)),
                            right: 0,
                            top: 0,
                          )
                        ],
                      ),
                    ),
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: Material(
                    color: Theme.of(context).primaryColorDark,
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: 8, right: 8, top: 6, bottom: 6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Icon(FontAwesomeIcons.rupeeSign,
                              color: Colors.white70, size: 16),
                          Text(
                            "0",
                            style: TextStyle(color: Colors.white),
                          ),
                          Material(
                            child: Padding(
                              padding: EdgeInsets.all(3),
                              child: Icon(FontAwesomeIcons.plus,
                                  color: Colors.white, size: 16),
                            ),
                            shape: CircleBorder(),
                            color: Theme.of(context).focusColor,
                          )
                        ],
                      ),
                    ),
                    shape: StadiumBorder(),
                  ),
                  flex: 1,
                ),
              ],
            ),
          )
          :
          AppBar(
            title: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 14,right: 6),
                  child: Icon(Icons.chat,color: Theme.of(context).accentIconTheme.color),
                ),
                Text("Chats")
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (int position) {
              setState(() {
                _currentIndex = position;
              });
              _tabController.animateTo(_currentIndex);
            },
            items: [
              BottomNavigationBarItem(
                icon: new Icon(Icons.home,
                    color: Theme.of(context).primaryIconTheme.color),
                backgroundColor: Theme.of(context).accentColor,
                activeIcon: new Icon(Icons.home,
                    color: Theme.of(context).iconTheme.color),
                title: Text(
                  "Home",
                  style: TextStyle(
                      color: Theme.of(context).textTheme.subtitle.color),
                ),
              ),
              BottomNavigationBarItem(
                icon: new Icon(Icons.history,
                    color: Theme.of(context).primaryIconTheme.color),
                backgroundColor: Theme.of(context).accentColor,
                activeIcon: new Icon(Icons.history,
                    color: Theme.of(context).iconTheme.color),
                title: Text(
                  "History",
                  style: TextStyle(
                      color: Theme.of(context).textTheme.subtitle.color),
                ),
              ),
              BottomNavigationBarItem(
                icon: new Icon(Icons.supervised_user_circle,
                    color: Theme.of(context).primaryIconTheme.color),
                backgroundColor: Theme.of(context).accentColor,
                activeIcon: new Icon(Icons.supervised_user_circle,
                    color: Theme.of(context).iconTheme.color),
                title: Text(
                  "Leaders",
                  style: TextStyle(
                      color: Theme.of(context).textTheme.subtitle.color),
                ),
              ),
              BottomNavigationBarItem(
                icon: new Icon(Icons.chat,
                    color: Theme.of(context).primaryIconTheme.color),
                backgroundColor: Theme.of(context).accentColor,
                activeIcon: new Icon(Icons.chat,
                    color: Theme.of(context).iconTheme.color),
                title: Text(
                  "Chats",
                  style: TextStyle(
                      color: Theme.of(context).textTheme.subtitle.color),
                ),
              ),
              BottomNavigationBarItem(
                icon: new Icon(Icons.account_balance_wallet,
                    color: Theme.of(context).primaryIconTheme.color),
                backgroundColor: Theme.of(context).accentColor,
                activeIcon: new Icon(Icons.account_balance_wallet,
                    color: Theme.of(context).iconTheme.color),
                title: Text(
                  "Wallet",
                  style: TextStyle(
                      color: Theme.of(context).textTheme.subtitle.color),
                ),
              ),
            ],
          ),
          body: TabBarView(
            controller: _tabController,
            children: _tabList,
            physics: NeverScrollableScrollPhysics(),
          ),
        ),
      ),
    );
  }
}
