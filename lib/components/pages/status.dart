import 'package:flutter/material.dart';
import 'package:ibig_play/components/pages/store_page_view.dart';
import 'package:theme_provider/theme_provider.dart';

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      child: Scaffold(
        body: Container(
          color: Theme.of(context).scaffoldBackgroundColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Stack(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80'),
                        ),
                        Positioned(
                          bottom: 0.0,
                          right: 1.0,
                          child: Container(
                            height: 20,
                            width: 20,
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 15,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                            ),
                          ),
                        )
                      ],
                    ),
                    title: Text(
                      "My Status",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).textTheme.subtitle.color),
                    ),
                    subtitle: Text("Tap to add status update",
                        style: TextStyle(
                            color: Theme.of(context).textTheme.subtitle.color)),
                  ),
                ),
              ),
              Container(
                child: Divider(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Viewed updates",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  color: Theme.of(context).scaffoldBackgroundColor,
                  child: ListView(
                    children: <Widget>[
                      ListTile(
                        leading: CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                              "https://pbs.twimg.com/media/EClDvMXU4AAw_lt?format=jpg&name=medium"),
                        ),
                        title: Text(
                          "Pawan Kumar",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color:
                                  Theme.of(context).textTheme.subtitle.color),
                        ),
                        subtitle: Text("Today, 20:16 PM",
                            style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .subtitle
                                    .color)),
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => StoryPageView())),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
