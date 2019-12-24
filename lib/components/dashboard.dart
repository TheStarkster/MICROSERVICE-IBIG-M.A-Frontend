import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibig_play/components/friendlist.dart';
import 'package:provider/provider.dart';
import 'package:theme_provider/theme_provider.dart';
import 'package:ibig_play/components/home.dart';
import 'package:ibig_play/components/leaderboard.dart';
import 'package:ibig_play/components/history.dart';
import 'package:ibig_play/components/pages/chats.dart';
import 'package:ibig_play/components/wallet.dart';
import 'package:ibig_play/components/profile.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:ibig_play/models/messages.dart';
import '../otp.dart';

class OtherPage extends StatefulWidget {
  final List<CameraDescription> cameras;
  final String phone;
  final isMessageRead;
  OtherPage({this.cameras, this.phone, this.isMessageRead});
  @override
  _OtherPageState createState() => _OtherPageState();
}

class _OtherPageState extends State<OtherPage>
    with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  static WebSocketChannel channel;
  TabController _tabController;
  List<Widget> _tabList;
  List<Container> _messageList;
  bool msg_seen;
  @override
  void initState() {
    super.initState();
    msg_seen = widget.isMessageRead;
    channel =
        IOWebSocketChannel.connect('ws://18.219.197.206:8080/' + widget.phone);
    _messageList = [];
    _tabList = [
      ThemeConsumer(child: HomeContent()),
      ThemeConsumer(child: Recent()),
      ThemeConsumer(child: LeaderBoard()),
      ThemeConsumer(child: Chats(cameras: cameras)),
      ThemeConsumer(child: Wallet()),
    ];
    final messageModelState = Provider.of<Message>(context, listen: false);
    if (msg_seen) {
      print("msg_seen is true");
      messageModelState.IsMessageRead(false);
    }
    _tabController = TabController(vsync: this, length: _tabList.length);
    channel.stream.listen((message) {
      print(message);
      //  messageModelState.addMessage(message);
      setState(() {
        if (_currentIndex != 3) {
          msg_seen = !msg_seen;
        }
        // _messageList.insert(_messageList.length,
        //   Container(
        //     child: Bubble(isMe: false,message: message)
        // ));
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ThemeConsumer(
      child: Scaffold(
        appBar: _currentIndex != 3
            ? AppBar(
                automaticallyImplyLeading: false,
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ThemeConsumer(child: Profile())));
                        },
                        child: CircleAvatar(
                          radius: 24,
                          backgroundColor: Color(0xFF320073),
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                child: ClipRRect(
                                  borderRadius:
                                      new BorderRadius.circular(100.0),
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
                          padding: EdgeInsets.only(
                              left: 8, right: 8, top: 6, bottom: 6),
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
            : AppBar(
                automaticallyImplyLeading: false,
                title: Row(
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 14, right: 6),
                            child: Icon(Icons.chat,
                                color: Theme.of(context).accentIconTheme.color),
                          ),
                          Text("Chats"),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          GestureDetector(
                            child: Padding(
                              padding: EdgeInsets.only(left: 26),
                              child: Icon(
                                Icons.group,
                                color: Theme.of(context).accentIconTheme.color,
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => FriendList()));
                            },
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 26),
                            child: Icon(
                              FontAwesomeIcons.ellipsisV,
                              color: Theme.of(context).accentIconTheme.color,
                            ),
                          ),
                          // Padding(
                          //   padding: EdgeInsets.only(left: 26),
                          //   child: Icon(
                          //     FontAwesomeIcons.ban,
                          //     color: Theme.of(context).accentIconTheme.color,
                          //   ),
                          // )
                        ],
                      ),
                    )
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
            if (position == 3) {
              msg_seen = true;
            }
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
              icon: Stack(
                children: <Widget>[
                  Icon(Icons.chat,
                      color: Theme.of(context).primaryIconTheme.color),
                  Positioned(
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.all(1),
                      constraints: BoxConstraints(
                        maxHeight: 8,
                        maxWidth: 8,
                      ),
                      decoration: BoxDecoration(
                          color: msg_seen ? Colors.transparent : Colors.red,
                          borderRadius: BorderRadius.circular(6)),
                    ),
                  ),
                ],
              ),
              backgroundColor: Theme.of(context).accentColor,
              activeIcon:
                  Icon(Icons.chat, color: Theme.of(context).iconTheme.color),
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
    );
  }
}

class Bubble extends StatelessWidget {
  final bool isMe;

  final String message;

  Bubble({this.message, this.isMe});

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: isMe ? EdgeInsets.only(left: 40) : EdgeInsets.only(right: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Column(
            mainAxisAlignment:
                isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
            crossAxisAlignment:
                isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  gradient: isMe
                      ? LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          stops: [
                              0.1,
                              1
                            ],
                          colors: [
                              Color(0xFFF6D365),
                              Color(0xFFFDA085),
                            ])
                      : LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          stops: [
                              0.1,
                              1
                            ],
                          colors: [
                              Color(0xFFEBF5FC),
                              Color(0xFFEBF5FC),
                            ]),
                  borderRadius: isMe
                      ? BorderRadius.only(
                          topRight: Radius.circular(15),
                          topLeft: Radius.circular(15),
                          bottomRight: Radius.circular(0),
                          bottomLeft: Radius.circular(15),
                        )
                      : BorderRadius.only(
                          topRight: Radius.circular(15),
                          topLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                          bottomLeft: Radius.circular(0),
                        ),
                ),
                child: Column(
                  crossAxisAlignment:
                      isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      message,
                      textAlign: isMe ? TextAlign.end : TextAlign.start,
                      style: TextStyle(
                        color: isMe ? Colors.white : Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
