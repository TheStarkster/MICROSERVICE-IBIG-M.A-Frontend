import 'package:flutter/material.dart';
import 'package:theme_provider/theme_provider.dart';

class EditProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Profile Edit"),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Center(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.3,
                    child: CircleAvatar(
                      radius: 58,
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
                            child: Container(
                              child: Padding(
                                padding: EdgeInsets.all(12),
                                child: Icon(Icons.edit,
                                    size: 24,
                                    color: Theme.of(context).iconTheme.color),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.black45,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                            ),
                            right: 0,
                            bottom: 0,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.3,
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).indicatorColor)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).indicatorColor)),
                        labelText: 'Enter Profile Name',
                        labelStyle: TextStyle(
                            color: Theme.of(context).textTheme.title.color),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.3,
                    child: TextField(
                      maxLines: 8,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).indicatorColor)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).indicatorColor)),
                        labelText: 'Enter Bio',
                        alignLabelWithHint: true,
                        labelStyle: TextStyle(
                            color: Theme.of(context).textTheme.title.color),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.3,
                    child: Text(
                      "Add Cover Photos",
                      style: TextStyle(
                          color: Theme.of(context).textTheme.title.color),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.3,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 18),
                          child: Container(
                            child: Center(
                              child: Icon(Icons.add,
                                  color: Theme.of(context).iconTheme.color),
                            ),
                            width: 78,
                            height: 78,
                            decoration: BoxDecoration(
                                color: Theme.of(context).cardColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6))),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 18),
                          child: Container(
                            child: Center(
                              child: Icon(Icons.add,
                                  color: Theme.of(context).iconTheme.color),
                            ),
                            width: 78,
                            height: 78,
                            decoration: BoxDecoration(
                                color: Theme.of(context).cardColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6))),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.3,
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).indicatorColor)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).indicatorColor)),
                        labelText: 'Enter Email Address',
                        labelStyle: TextStyle(
                            color: Theme.of(context).textTheme.title.color),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.3,
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).indicatorColor)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).indicatorColor)),
                        labelText: 'Enter Phone Number',
                        labelStyle: TextStyle(
                            color: Theme.of(context).textTheme.title.color),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.3,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            child: MaterialButton(
                              child: Text("Save"),
                              color: Colors.green[300],
                              onPressed: () {},
                            ),
                            margin: EdgeInsets.only(left: 8, right: 8),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: MaterialButton(
                              child: Text("Cancel"),
                              color: Colors.blueGrey,
                              onPressed: () {
                                Navigator.pop(context,EditProfile());
                              },
                            ),
                            margin: EdgeInsets.only(left: 8, right: 8),
                          ),
                        ),
                      ],
                    ),
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
