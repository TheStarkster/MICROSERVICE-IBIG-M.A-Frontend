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
  Stream<String> bringRequests() async* {
    DbHandlers obj = new DbHandlers();
    var local_res = await obj.GetUserFromTable();
    var res = await HTTP.get('http://18.219.197.206:2643/get-requests/' +
        local_res[0].online_id.toString());
    yield res.body;
  }

  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      child: Scaffold(
          appBar: AppBar(
            title: Text("Friend Requests"),
          ),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          body: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height,
              child: StreamBuilder(
                stream: bringRequests(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: CircularProgressIndicator(),
                        )
                      ],
                    );
                  } else {
                    // print(jsonDecode(snapshot.data));
                    if (snapshot.data != "[]") {
                      return UserContainer(
                        channel: widget.channel,
                        phone: jsonDecode(snapshot.data)[0]["from"].toString(),
                        name: "Not Registered",
                        online_id:
                            int.parse(jsonDecode(snapshot.data)[0]["from"]),
                        requester_phone: jsonDecode(snapshot.data)[0]
                                ["phone_of_from"]
                            .toString(),
                      );
                    } else {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            child: Text("No Requests at the Moment"),
                            padding: EdgeInsets.all(20),
                          )
                        ],
                      );
                    }
                  }
                },
              ),
            ),
          )
          // child: UserContainer(
          //     phone: '9953579196',
          //     name: 'unregistered',
          //     req_online_id: 1,
          //     online_id: 1,
          //     channel: widget.channel)),
          ),
    );
  }
}

class UserContainer extends StatefulWidget {
  final String name, phone, dp, requester_phone;
  final int online_id;
  final WebSocketChannel channel;
  UserContainer(
      {this.name,
      this.requester_phone,
      this.phone,
      this.dp,
      this.online_id,
      this.channel});
  @override
  _UserContainerState createState() => _UserContainerState();
}

class _UserContainerState extends State<UserContainer> {
  Future acceptRequest(int id) async {
    var res = await HTTP
        .get('http://18.219.197.206:2643/accept-request/' + id.toString());
    print("res.bodyres.bodyres.bodyres.bodyres.bodyres.body");
    print(res.body);
    print("res.bodyres.bodyres.bodyres.bodyres.bodyres.body");
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
                    var body = jsonEncode({
                      "data": {
                          "message": res[0].phone +
                              " accepted yor request start chatting now ✌",
                          "receiver": widget.online_id.toString(),
                          "sender": res[0].online_id.toString(),
                      }
                    });
                    // var saveMessageres = await HTTP
                    //     .post('http://18.219.197.206:2643/save-message', body: {"data":"njnkjnjnk"});
                    
                    // print("body");
                    // print(body);
                    // print(body.runtimeType);
                    // print("body");
                    // print(saveMessageres.body);
                    widget.channel.sink.add(
                      jsonEncode({
                        "message": res[0].phone + " accepted yor request start chatting now ✌",
                        "receiver_id": widget.online_id,
                        "receiver": "/" + widget.requester_phone,
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
