import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:ibig_play/components/utilities/custom_heading.dart';
import 'package:theme_provider/theme_provider.dart';
import 'package:ibig_play/components/pages/chat_details.dart';
import 'package:ibig_play/db_handlers/handler.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:http/http.dart' as HTTP;

class UserContainer extends StatefulWidget {
  final String name, phone, dp, sender_phone;
  final int online_id, sender_id;
  final WebSocketChannel channel;
  UserContainer(
      {this.name,
      this.phone,
      this.dp,
      this.online_id,
      this.sender_id,
      this.sender_phone,
      this.channel});
  @override
  _UserContainerState createState() => _UserContainerState();
}

class _UserContainerState extends State<UserContainer> {
  Future sendRequest(String phone) async {
    await HTTP.get('http://18.219.197.206:2643/send-request/' +
        widget.online_id.toString() +
        "/" +
        widget.sender_id.toString() +
        "/" +
        widget.sender_phone);
  }

  String _buttontext;
  Color btntheme;
  List<Container> messageList;
  @override
  void initState() {
    messageList = [];
    _buttontext = "Request";
    btntheme = Colors.blueAccent;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(6),
      margin: EdgeInsets.all(2),
      height: 70,
      color: Theme.of(context).cardColor,
      child: Padding(
        padding: EdgeInsets.all(6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 18),
              child: CircleAvatar(child: Text("user"), radius: 25),
            ),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(widget.name,
                      style: TextStyle(
                          color: Theme.of(context).textTheme.subtitle.color)),
                  Text(widget.phone,
                      style: TextStyle(
                          color: Theme.of(context).textTheme.subtitle.color)),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 18, right: 12),
                child: MaterialButton(
                  child: Text(_buttontext, style: TextStyle(color: btntheme)),
                  shape: StadiumBorder(
                    side: BorderSide(color: btntheme),
                  ),
                  onPressed: () {
                    sendRequest(widget.phone);
                    widget.channel.sink.add(
                      jsonEncode({
                        "message": widget.sender_phone + " wants to text you",
                        "receiver_id": widget.online_id,
                        "receiver": "/" + '9871721421',
                        "sender": widget.sender_id,
                        "code": "#<REQUEST>#",
                      }),
                    );
                    setState(() {
                      if (_buttontext == "Request") {
                        _buttontext = "Sent";
                        btntheme = Colors.lightGreen;
                      } else {
                        btntheme = Colors.blueAccent;
                        _buttontext = "Request";
                      }
                    });
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MessagesWidget extends StatefulWidget {
  final String phone;
  final WebSocketChannel channel;
  MessagesWidget({this.phone, this.channel});
  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<MessagesWidget> {
  bool isSearchedBarOpened;
  // StreamController _searchStreamController;
  Color bgcolor;
  List<UserContainer> searchUserResultContainer;
  List<UserMessageCard> userMessageCard;
  String hint;
  TextEditingController _searchController;
  // void bringunreads() async{

  //       print(res.toString());
  // }
  @override
  void initState() {
    super.initState();
    isSearchedBarOpened = false;
    bgcolor = Colors.black;
    // _searchStreamController = new StreamController();
    searchUserResultContainer = [];
    userMessageCard = [];
    hint = "";
    _searchController = TextEditingController();
  }

  Stream<Object> bringUnreadMsg() async* {
    DbHandlers dbHandler_Obj = new DbHandlers();
    var res = await dbHandler_Obj.GetMessagesFromTable();
    yield res;
  }

  Future fetchUsers(String hint) async {
    searchUserResultContainer.clear();
    if (hint != "") {
      var res = await HTTP.get('http://18.219.197.206:2643/find-user/' + hint);
      DbHandlers obj = new DbHandlers();
      var localres = await obj.GetUserFromTable();
      if (res.statusCode == 200) {
        if (jsonDecode(res.body)["message"].length > 0) {
          setState(() {
            for (var searchItem in jsonDecode(res.body)["message"]) {
              searchUserResultContainer.insert(
                  0,
                  UserContainer(
                      phone: "+91 " + searchItem["phone"],
                      channel: widget.channel,
                      sender_id: localres[0].online_id,
                      online_id: int.parse(searchItem["id"]),
                      sender_phone: localres[0].phone,
                      name: searchItem["fname"] == null
                          ? "Name Not Registred"
                          : searchItem["fname"]));
            }
          });
        }
      } else {
        throw Exception("There's Some Error From API");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              isSearchedBarOpened = !isSearchedBarOpened;
            });
          },
          child: Icon(Icons.search),
        ),
        body: SingleChildScrollView(
          child: isSearchedBarOpened
              ? Container(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: TextField(
                          controller: _searchController,
                          onChanged: (change) => fetchUsers(change),
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 12),
                              hintText: "Search Your Pal Here",
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              hintStyle: TextStyle(color: Colors.white70)),
                        ),
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          child: ListView.builder(
                            itemCount: searchUserResultContainer.length,
                            itemBuilder: (BuildContext context, int index) {
                              return searchUserResultContainer[index];
                            },
                          )),
                    ],
                  ),
                )
              : Column(
                  children: <Widget>[
                    CustomHeading(
                      title: 'Groups',
                    ),
                    Container(
                      height: 140,
                      child: ListView.builder(
                        itemCount: 4,
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.all(15),
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin: EdgeInsets.only(right: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  width: 78,
                                  height: 78,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomRight,
                                      stops: [0.1, 1],
                                      colors: [
                                        Color(0xFF8C68EC),
                                        Color(0xFF3E8DF3),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: Icon(
                                    Icons.chat,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text(
                                    'Group Name',
                                    style: TextStyle(
                                        color: Theme.of(context)
                                            .textTheme
                                            .subtitle
                                            .color),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    CustomHeading(
                      title: 'Messages',
                    ),
                    StreamBuilder(
                      stream: bringUnreadMsg(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return ListView.builder(
                            itemCount: snapshot.data.length,
                            shrinkWrap: true,
                            physics: ClampingScrollPhysics(),
                            scrollDirection: Axis.vertical,
                            itemBuilder: (BuildContext context, int index) {
                              return UserMessageCard(
                                message:
                                    snapshot.data[index]["message"].toString(),
                                userid:
                                    snapshot.data[index]["sender"].toString(),
                                isUnread:
                                    snapshot.data[index]["read"].toString() ==
                                            "0"
                                        ? true
                                        : false,
                                online_id: snapshot.data[index]["online_id"],
                                local_id: snapshot.data[index]["id"],
                                isRead: snapshot.data[index]["read"],
                              );
                            },
                          );
                        } else {
                          return CircularProgressIndicator(
                              backgroundColor: Colors.white);
                        }
                      },
                    )
                  ],
                ),
        ),
      ),
    );
  }
}

class UserMessageCard extends StatefulWidget {
  final String userid, message, phone;
  final int online_id, local_id, isRead;
  final bool isUnread;

  UserMessageCard(
      {this.userid,
      this.message,
      this.phone,
      this.online_id,
      this.isUnread,
      this.local_id,
      this.isRead});
  @override
  _UserMessageCard createState() => _UserMessageCard();
}

class _UserMessageCard extends State<UserMessageCard> {
  static String phone;
  static int online_id, local_id;
  bool local_isUnread;
  List<int> online_ID, local_ID;
  @override
  void initState() {
    phone = widget.phone;
    online_id = widget.online_id;
    local_isUnread = widget.isUnread;
    online_ID = [];
    local_ID = [];
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: InkWell(
        onTap: () async {
          setState(() {
            local_isUnread = false;
          });
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ChatDetails()));
          DbHandlers obj = new DbHandlers();
          online_ID.insert(0, widget.online_id);
          local_ID.insert(0, widget.online_id);
          if (widget.isRead == 0) {
            await obj.ReadMessage(online_ID, local_ID);
          }
        },
        child: Container(
          margin: EdgeInsets.fromLTRB(15, 3, 15, 3),
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withAlpha(50),
                offset: Offset(0, 0),
                blurRadius: 5,
              ),
            ],
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
          ),
          child: Row(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 12),
                    child: CircleAvatar(
                      backgroundImage:
                          NetworkImage('https://i.pravatar.cc/102'),
                      minRadius: 28,
                      backgroundColor: Colors.grey[200],
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.userid == null ? "userid" : widget.userid,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                    ),
                    Text(
                      widget.message,
                      style: TextStyle(
                          color:
                              local_isUnread ? Colors.green : Color(0xff8C68EC),
                          fontSize: 14,
                          fontWeight: local_isUnread
                              ? FontWeight.bold
                              : FontWeight.normal),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                    ),
                    Text(
                      '11:00 AM',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Icon(
                      Icons.chevron_right,
                      size: 18,
                      color: Color(0xff8C68EC),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
