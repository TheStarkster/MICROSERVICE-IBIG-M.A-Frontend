import 'package:flutter/material.dart';
import 'package:ibig_play/components/utilities/custom_heading.dart';
import 'package:theme_provider/theme_provider.dart';
import 'package:ibig_play/components/pages/chat_details.dart';

class Messages extends StatefulWidget {
  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
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
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              CustomHeading(
                title: 'Messages',
              ),
              ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return Material(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChatDetails()));
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
                                    backgroundImage: NetworkImage(
                                        'https://i.pravatar.cc/11$index'),
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
                                    'Jocelyn',
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
                                    'Hi How are you ?',
                                    style: TextStyle(
                                      color: Color(0xff8C68EC),
                                      fontSize: 14,
                                    ),
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
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
