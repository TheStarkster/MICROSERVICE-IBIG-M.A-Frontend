import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:theme_provider/theme_provider.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 44),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              bottomLeft: Radius.circular(50)),
                          color: Color(0xFF4900a9),
                        ),
                        child: Row(
                          children: <Widget>[
                            Icon(FontAwesomeIcons.medal,
                                color: Colors.white70, size: 18),
                            Text(
                              "Bronze",
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
              Center(
                child: CircleAvatar(
                  radius: 80,
                  child: ClipRRect(
                    borderRadius: new BorderRadius.circular(100.0),
                    child: Image.network(
                        'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80'),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 24),
                child: Text(
                  "User Full Name",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 28),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(FontAwesomeIcons.phoneAlt,
                        color: Colors.white, size: 12),
                    Text(
                      "+91 9953XXXXXX",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 12),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(FontAwesomeIcons.envelope,
                        color: Colors.white, size: 12),
                    Text(
                      "example@example.com",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 12),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(FontAwesomeIcons.mapPin,
                        color: Colors.white, size: 12),
                    Text(
                      "New Delhi, India",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 12),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(18),
                child: MaterialButton(
                  child: Text("Edit Profile"),
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      borderSide: BorderSide(
                        color: Colors.white, //Color of the border
                        style: BorderStyle.solid, //Style of the border
                        width: 0.8, //width of the border
                      )),
                  textColor: Colors.white,
                  onPressed: () {},
                ),
              ),
             ],
          ),
        ),
      ),
    );
  }
}
//  Padding(
//                 padding: EdgeInsets.all(12),
//                 child: Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.all(Radius.circular(4)),
//                     color: Colors.white,
//                   ),
//                   child: Column(
//                     children: <Widget>[
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: <Widget>[
//                           Expanded(
//                               child: Padding(
//                             padding: EdgeInsets.all(6),
//                             child: Container(
//                                 color: Colors.black12,
//                                 child: Padding(
//                                   padding: EdgeInsets.all(12),
//                                   child: Row(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: <Widget>[
//                                       Padding(
//                                         padding: EdgeInsets.only(right: 12),
//                                         child: Icon(FontAwesomeIcons.coins,
//                                             color: Colors.black54),
//                                       ),
//                                       Text("30")
//                                     ],
//                                   ),
//                                 )),
//                           )),
//                           Expanded(
//                               child: Padding(
//                             padding: EdgeInsets.all(6),
//                             child: Container(
//                                 color: Colors.black12,
//                                 child: Padding(
//                                   padding: EdgeInsets.all(12),
//                                   child: Row(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: <Widget>[
//                                       Padding(
//                                         padding: EdgeInsets.only(right: 12),
//                                         child: Icon(FontAwesomeIcons.rupeeSign,
//                                             color: Colors.black54),
//                                       ),
//                                       Text("0")
//                                     ],
//                                   ),
//                                 )),
//                           )),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               )
            