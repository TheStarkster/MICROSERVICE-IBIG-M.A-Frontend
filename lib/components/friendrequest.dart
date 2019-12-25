import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ibig_play/models/messages.dart';
import 'package:provider/provider.dart';
import 'package:theme_provider/theme_provider.dart';
import 'package:ibig_play/db_handlers/handler.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:http/http.dart' as HTTP;

class FriendList extends StatefulWidget {
  final String phone;
  final WebSocketChannel channel;
  FriendList({this.phone, this.channel});
  @override
  _FriendListState createState() => _FriendListState();
}

class _FriendListState extends State<FriendList> {
  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Friend Requests"),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: SingleChildScrollView(
            child: UserContainer(
                phone: '9953579196',
                name: 'unregistered',
                req_online_id: 1,
                online_id: 1,
                channel: widget.channel)),
      ),
    );
  }
}

class UserContainer extends StatefulWidget {
  final String name, phone, dp;
  final int req_online_id, online_id;
  final WebSocketChannel channel;
  UserContainer(
      {this.name,
      this.phone,
      this.dp,
      this.req_online_id,
      this.online_id,
      this.channel});
  @override
  _UserContainerState createState() => _UserContainerState();
}

class _UserContainerState extends State<UserContainer> {
  Future acceptRequest(int id) async {
    await HTTP
        .get('http://18.219.197.206:2643/accept-request/' + id.toString());
  }

  List<Container> messageList;
  @override
  void initState() {
    messageList = [];
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
                  Text(
                    widget.name,
                    style: TextStyle(
                        color: Theme.of(context).textTheme.subtitle.color),
                  ),
                  Text(
                    widget.phone,
                    style: TextStyle(
                        color: Theme.of(context).textTheme.subtitle.color),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 18, right: 12),
                child: MaterialButton(
                  child: Text("Accept", style: TextStyle(color: Colors.green)),
                  shape: StadiumBorder(
                    side: BorderSide(color: Colors.green),
                  ),
                  onPressed: () async {
                    // acceptRequest(widget.req_online_id);
                    DbHandlers obj = new DbHandlers();
                    var res = await obj.GetUserFromTable();
                    // messageModelState.addMessage(res[0].phone+" accepted yor request start chatting now ✌", widget.online_id, res[0].online_id, 0);
                    print(widget.channel);
                    widget.channel.sink.add(
                      jsonEncode({
                        "message": res[0].phone + " accepted yor request start chatting now ✌",
                        "receiver_id": widget.online_id,
                        "receiver": "/" + '9871721421',
                        "sender": res[0].online_id,
                        "code": "#<ACCEPTED>#"
                      }),
                    );
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
