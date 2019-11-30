import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:theme_provider/theme_provider.dart';
import 'package:ibig_play/components/pages/messages.dart';
import 'package:ibig_play/components/pages/status.dart';
import 'package:ibig_play/components/pages/camera.dart';

class Chats extends StatefulWidget {
  final List<CameraDescription> cameras;
  Chats(this.cameras);

  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      child: Scaffold(
        body: DefaultTabController(
          length: 3,
          initialIndex: 1,
          child: Column(
            children: <Widget>[
              Container(
                constraints: BoxConstraints.expand(height: 50),
                child: TabBar(
                  indicatorColor: Theme.of(context).indicatorColor,
                  tabs: [
                    Tab(
                      child: Icon(Icons.camera_alt,
                          color: Theme.of(context).accentIconTheme.color),
                    ),
                    Tab(
                      child: Text(
                        "Messages",
                        style: TextStyle(
                            color: Theme.of(context).textTheme.overline.color),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Status",
                        style: TextStyle(
                            color: Theme.of(context).textTheme.overline.color),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    Container(child: CameraScreen(widget.cameras)),
                    Container(child: Messages()),
                    Container(child: StatusScreen()),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
