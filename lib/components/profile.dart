import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ibig_play/components/edit_profile.dart';
import 'package:theme_provider/theme_provider.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  var top = 0.0;
  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
                centerTitle: true,
                background: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ThemeConsumer(child: EditProfile())));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black26,
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        padding: EdgeInsets.all(16),
                        child: Text(
                          'Add 2 Cover Photos',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Theme.of(context).textTheme.subtitle.color,
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 44),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        backgroundColor: Colors.white,
                                        title: Column(
                                          children: <Widget>[
                                            Text(
                                              "Your Class is BRONZE",
                                              style: TextStyle(fontSize: 18),
                                            ),
                                            Text(
                                              "Win More Cash To Get HIGHER CLASS!",
                                              style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.black45,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 12),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.black26,
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                8))),
                                                padding: EdgeInsets.all(8),
                                                child: Text(
                                                  'All Classes',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 11.0,
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        content: Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              2.2,
                                          color: Colors.grey[200],
                                          child: SingleChildScrollView(
                                            child: Column(
                                              children: <Widget>[
                                                Padding(
                                                  padding: EdgeInsets.all(6),
                                                  child: Row(
                                                    children: <Widget>[
                                                      Expanded(
                                                        child: Row(
                                                          children: <Widget>[
                                                            Text("Win ",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        12)),
                                                            Text(" ₹0 ",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                            .green[
                                                                        300],
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        12)),
                                                            Text(" for",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        12)),
                                                          ],
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Row(
                                                          children: <Widget>[
                                                            Container(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(8),
                                                                child: Icon(
                                                                    FontAwesomeIcons
                                                                        .medal),
                                                              ),
                                                              decoration:
                                                                  BoxDecoration(
                                                                      gradient:
                                                                          LinearGradient(
                                                                        begin: Alignment
                                                                            .bottomCenter,
                                                                        end: Alignment
                                                                            .topCenter,
                                                                        stops: [
                                                                          0.26,
                                                                          0.8
                                                                        ],
                                                                        colors: [
                                                                          Color(
                                                                              0xFF9A5515),
                                                                          Color(
                                                                              0xFFB87333),
                                                                        ],
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.all(
                                                                              Radius.circular(50))),
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left: 6),
                                                              child: Text(
                                                                  "COPPER",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          12)),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(6),
                                                  child: Row(
                                                    children: <Widget>[
                                                      Expanded(
                                                        child: Row(
                                                          children: <Widget>[
                                                            Text("Win ",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        12)),
                                                            Text(" ₹5 ",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                            .green[
                                                                        300],
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        12)),
                                                            Text(" for",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        12)),
                                                          ],
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Row(
                                                          children: <Widget>[
                                                            Container(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(8),
                                                                child: Icon(
                                                                    FontAwesomeIcons
                                                                        .medal),
                                                              ),
                                                              decoration:
                                                                  BoxDecoration(
                                                                      gradient:
                                                                          LinearGradient(
                                                                        begin: Alignment
                                                                            .bottomCenter,
                                                                        end: Alignment
                                                                            .topCenter,
                                                                        stops: [
                                                                          0.26,
                                                                          0.8
                                                                        ],
                                                                        colors: [
                                                                          Color(
                                                                              0xFF895e1a),
                                                                          Color(
                                                                              0xFFb08d57),
                                                                        ],
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.all(
                                                                              Radius.circular(50))),
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left: 6),
                                                              child: Text(
                                                                  "BRONZE",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          12)),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(6),
                                                  child: Row(
                                                    children: <Widget>[
                                                      Expanded(
                                                        child: Row(
                                                          children: <Widget>[
                                                            Text("Win ",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        12)),
                                                            Text(" ₹20 ",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                            .green[
                                                                        300],
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        12)),
                                                            Text(" for",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        12)),
                                                          ],
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Row(
                                                          children: <Widget>[
                                                            Container(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(8),
                                                                child: Icon(
                                                                    FontAwesomeIcons
                                                                        .medal),
                                                              ),
                                                              decoration:
                                                                  BoxDecoration(
                                                                      gradient:
                                                                          LinearGradient(
                                                                        begin: Alignment
                                                                            .bottomCenter,
                                                                        end: Alignment
                                                                            .topCenter,
                                                                        stops: [
                                                                          0.26,
                                                                          0.8
                                                                        ],
                                                                        colors: [
                                                                          Color(
                                                                              0xFFD3D3D3),
                                                                          Color(
                                                                              0xFF808080),
                                                                        ],
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.all(
                                                                              Radius.circular(50))),
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left: 6),
                                                              child: Text(
                                                                  "SILVER",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          12)),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(6),
                                                  child: Row(
                                                    children: <Widget>[
                                                      Expanded(
                                                        child: Row(
                                                          children: <Widget>[
                                                            Text("Win ",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        12)),
                                                            Text(" ₹50 ",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                            .green[
                                                                        300],
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        12)),
                                                            Text(" for",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        12)),
                                                          ],
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Row(
                                                          children: <Widget>[
                                                            Container(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(8),
                                                                child: Icon(
                                                                    FontAwesomeIcons
                                                                        .medal),
                                                              ),
                                                              decoration:
                                                                  BoxDecoration(
                                                                      gradient:
                                                                          LinearGradient(
                                                                        begin: Alignment
                                                                            .bottomCenter,
                                                                        end: Alignment
                                                                            .topCenter,
                                                                        stops: [
                                                                          0.26,
                                                                          0.8
                                                                        ],
                                                                        colors: [
                                                                          Color(
                                                                              0xFFfcc201),
                                                                          Color(
                                                                              0xFFb78628),
                                                                        ],
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.all(
                                                                              Radius.circular(50))),
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left: 6),
                                                              child: Text(
                                                                  "GOLD",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          12)),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(6),
                                                  child: Row(
                                                    children: <Widget>[
                                                      Expanded(
                                                        child: Row(
                                                          children: <Widget>[
                                                            Text("Win ",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        12)),
                                                            Text(" ₹100 ",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                            .green[
                                                                        300],
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        12)),
                                                            Text(" for",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        12)),
                                                          ],
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Row(
                                                          children: <Widget>[
                                                            Container(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(8),
                                                                child: Icon(
                                                                    FontAwesomeIcons
                                                                        .medal),
                                                              ),
                                                              decoration:
                                                                  BoxDecoration(
                                                                      gradient:
                                                                          LinearGradient(
                                                                        begin: Alignment
                                                                            .bottomCenter,
                                                                        end: Alignment
                                                                            .topCenter,
                                                                        stops: [
                                                                          0.26,
                                                                          0.8
                                                                        ],
                                                                        colors: [
                                                                          Color(
                                                                              0xFFF4F3F1),
                                                                          Color(
                                                                              0xFFC7C6C4),
                                                                        ],
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.all(
                                                                              Radius.circular(50))),
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left: 6),
                                                              child: Text(
                                                                  "PLATINUM",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          12)),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(6),
                                                  child: Row(
                                                    children: <Widget>[
                                                      Expanded(
                                                        child: Row(
                                                          children: <Widget>[
                                                            Text("Win ",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        12)),
                                                            Text(" ₹250 ",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                            .green[
                                                                        300],
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        12)),
                                                            Text(" for",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        12)),
                                                          ],
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Row(
                                                          children: <Widget>[
                                                            Container(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(8),
                                                                child: Icon(
                                                                    FontAwesomeIcons
                                                                        .medal),
                                                              ),
                                                              decoration:
                                                                  BoxDecoration(
                                                                      gradient:
                                                                          LinearGradient(
                                                                        begin: Alignment
                                                                            .bottomCenter,
                                                                        end: Alignment
                                                                            .topCenter,
                                                                        stops: [
                                                                          0.26,
                                                                          0.8
                                                                        ],
                                                                        colors: [
                                                                          Color(
                                                                              0xFFE7ACCF),
                                                                          Color(
                                                                              0xFFE7ACB2),
                                                                        ],
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.all(
                                                                              Radius.circular(50))),
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left: 6),
                                                              child: Text(
                                                                  "PEARL",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          12)),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(6),
                                                  child: Row(
                                                    children: <Widget>[
                                                      Expanded(
                                                        child: Row(
                                                          children: <Widget>[
                                                            Text("Win ",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        12)),
                                                            Text(" ₹500 ",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                            .green[
                                                                        300],
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        12)),
                                                            Text(" for",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        12)),
                                                          ],
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Row(
                                                          children: <Widget>[
                                                            Container(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(8),
                                                                child: Icon(
                                                                    FontAwesomeIcons
                                                                        .medal),
                                                              ),
                                                              decoration:
                                                                  BoxDecoration(
                                                                      gradient:
                                                                          LinearGradient(
                                                                        begin: Alignment
                                                                            .bottomCenter,
                                                                        end: Alignment
                                                                            .topCenter,
                                                                        stops: [
                                                                          0.26,
                                                                          0.8
                                                                        ],
                                                                        colors: [
                                                                          Color(
                                                                              0xFF9A4578),
                                                                          Color(
                                                                              0xFF742253),
                                                                        ],
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.all(
                                                                              Radius.circular(50))),
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left: 6),
                                                              child: Text(
                                                                  "ONYX",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          12)),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(6),
                                                  child: Row(
                                                    children: <Widget>[
                                                      Expanded(
                                                        child: Row(
                                                          children: <Widget>[
                                                            Text("Win ",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        12)),
                                                            Text(" ₹750 ",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                            .green[
                                                                        300],
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        12)),
                                                            Text(" for",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        12)),
                                                          ],
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Row(
                                                          children: <Widget>[
                                                            Container(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(8),
                                                                child: Icon(
                                                                    FontAwesomeIcons
                                                                        .medal),
                                                              ),
                                                              decoration:
                                                                  BoxDecoration(
                                                                      gradient:
                                                                          LinearGradient(
                                                                        begin: Alignment
                                                                            .bottomCenter,
                                                                        end: Alignment
                                                                            .topCenter,
                                                                        stops: [
                                                                          0.26,
                                                                          0.8
                                                                        ],
                                                                        colors: [
                                                                          Color(
                                                                              0xFF00A8A3),
                                                                          Color(
                                                                              0xFF00A86B),
                                                                        ],
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.all(
                                                                              Radius.circular(50))),
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left: 6),
                                                              child: Text(
                                                                  "JADE",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          12)),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(6),
                                                  child: Row(
                                                    children: <Widget>[
                                                      Expanded(
                                                        child: Row(
                                                          children: <Widget>[
                                                            Text("Win ",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        12)),
                                                            Text(" ₹1000 ",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                            .green[
                                                                        300],
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        12)),
                                                            Text(" for",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        12)),
                                                          ],
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Row(
                                                          children: <Widget>[
                                                            Container(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(8),
                                                                child: Icon(
                                                                    FontAwesomeIcons
                                                                        .medal),
                                                              ),
                                                              decoration:
                                                                  BoxDecoration(
                                                                      gradient:
                                                                          LinearGradient(
                                                                        begin: Alignment
                                                                            .bottomCenter,
                                                                        end: Alignment
                                                                            .topCenter,
                                                                        stops: [
                                                                          0.2,
                                                                          0.4,
                                                                          0.6,
                                                                          0.8
                                                                        ],
                                                                        colors: [
                                                                          Color(
                                                                              0xFF00A86B),
                                                                          Color(
                                                                              0xFFFF00FF),
                                                                          Color(
                                                                              0xFF800000),
                                                                          Colors
                                                                              .yellow,
                                                                        ],
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.all(
                                                                              Radius.circular(50))),
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left: 6),
                                                              child: Text(
                                                                  "OPAL",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          12)),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(6),
                                                  child: Row(
                                                    children: <Widget>[
                                                      Expanded(
                                                        child: Row(
                                                          children: <Widget>[
                                                            Text("Win ",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        12)),
                                                            Text(" ₹2500 ",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                            .green[
                                                                        300],
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        12)),
                                                            Text(" for",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        12)),
                                                          ],
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Row(
                                                          children: <Widget>[
                                                            Container(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(8),
                                                                child: Icon(
                                                                    FontAwesomeIcons
                                                                        .medal),
                                                              ),
                                                              decoration:
                                                                  BoxDecoration(
                                                                      gradient:
                                                                          LinearGradient(
                                                                        begin: Alignment
                                                                            .bottomCenter,
                                                                        end: Alignment
                                                                            .topCenter,
                                                                        stops: [
                                                                          0.2,
                                                                          0.4,
                                                                          0.8
                                                                        ],
                                                                        colors: [
                                                                          Color(
                                                                              0xFF7CB3FF),
                                                                          Color(
                                                                              0xFF4985D9),
                                                                          Color(
                                                                              0xFF215EB2),
                                                                        ],
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.all(
                                                                              Radius.circular(50))),
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left: 6),
                                                              child: Text(
                                                                  "TOPAZ",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          12)),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(6),
                                                  child: Row(
                                                    children: <Widget>[
                                                      Expanded(
                                                        child: Row(
                                                          children: <Widget>[
                                                            Text("Win ",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        12)),
                                                            Text(" ₹10000 ",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                            .green[
                                                                        300],
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        12)),
                                                            Text(" for",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        12)),
                                                          ],
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Row(
                                                          children: <Widget>[
                                                            Container(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(8),
                                                                child: Icon(
                                                                    FontAwesomeIcons
                                                                        .medal),
                                                              ),
                                                              decoration:
                                                                  BoxDecoration(
                                                                      gradient:
                                                                          LinearGradient(
                                                                        begin: Alignment
                                                                            .bottomCenter,
                                                                        end: Alignment
                                                                            .topCenter,
                                                                        stops: [
                                                                          0.2,
                                                                          1
                                                                        ],
                                                                        colors: [
                                                                          Color(
                                                                              0xFF20418D),
                                                                          Color(
                                                                              0xFF001441),
                                                                        ],
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.all(
                                                                              Radius.circular(50))),
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left: 6),
                                                              child: Text(
                                                                  "SAPPHIRE",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          12)),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(6),
                                                  child: Row(
                                                    children: <Widget>[
                                                      Expanded(
                                                        child: Row(
                                                          children: <Widget>[
                                                            Text("Win ",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        12)),
                                                            Text(" ₹50000 ",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                            .green[
                                                                        300],
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        12)),
                                                            Text(" for",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        12)),
                                                          ],
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Row(
                                                          children: <Widget>[
                                                            Container(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(8),
                                                                child: Icon(
                                                                    FontAwesomeIcons
                                                                        .medal),
                                                              ),
                                                              decoration:
                                                                  BoxDecoration(
                                                                      gradient:
                                                                          LinearGradient(
                                                                        begin: Alignment
                                                                            .bottomCenter,
                                                                        end: Alignment
                                                                            .topCenter,
                                                                        stops: [
                                                                          0.2,
                                                                          1
                                                                        ],
                                                                        colors: [
                                                                          Color(
                                                                              0xFF50C878),
                                                                          Color(
                                                                              0xFF50C8A0),
                                                                        ],
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.all(
                                                                              Radius.circular(50))),
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left: 6),
                                                              child: Text(
                                                                  "EMERALD",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          12)),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(6),
                                                  child: Row(
                                                    children: <Widget>[
                                                      Expanded(
                                                        child: Row(
                                                          children: <Widget>[
                                                            Text("Win ",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        12)),
                                                            Text(" ₹100000 ",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                            .green[
                                                                        300],
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        12)),
                                                            Text(" for",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        12)),
                                                          ],
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Row(
                                                          children: <Widget>[
                                                            Container(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(8),
                                                                child: Icon(
                                                                    FontAwesomeIcons
                                                                        .medal),
                                                              ),
                                                              decoration:
                                                                  BoxDecoration(
                                                                      gradient:
                                                                          LinearGradient(
                                                                        begin: Alignment
                                                                            .bottomCenter,
                                                                        end: Alignment
                                                                            .topCenter,
                                                                        stops: [
                                                                          0.2,
                                                                          1
                                                                        ],
                                                                        colors: [
                                                                          Color(
                                                                              0xFF9B111E),
                                                                          Color(
                                                                              0xFF7D0000),
                                                                        ],
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.all(
                                                                              Radius.circular(50))),
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left: 6),
                                                              child: Text(
                                                                  "RUBY",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          12)),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    });
                              },
                              child: Container(
                                padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                    stops: [0.26, 0.8],
                                    colors: [
                                      Color(0xFF895e1a),
                                      Color(0xFFb08d57),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50),
                                      bottomLeft: Radius.circular(50)),
                                  color: Color(0xFF4900a9),
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Icon(FontAwesomeIcons.medal,
                                        color: Colors.white, size: 18),
                                    Text(
                                      "Bronze",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                            ),
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
                              fontSize: 24),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ThemeConsumer(child: EditProfile())));
                        },
                        child: Container(
                          child: Padding(
                            padding: EdgeInsets.only(top: 10, bottom: 24),
                            child: Text(
                              "Tap Here to Write Something About Yourself",
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          width: MediaQuery.of(context).size.width / 1.4,
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              borderSide: BorderSide(
                                color: Colors.white, //Color of the border
                                style: BorderStyle.solid, //Style of the border
                                width: 0.8, //width of the border
                              )),
                          textColor: Colors.white,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ThemeConsumer(child: EditProfile())));
                          },
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 18, left: 24),
                            child: Text(
                              "Wallets",
                              style: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .subtitle
                                      .color,
                                  fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.all(21),
                                      child: Image.asset(
                                          'assets/images/paytm.png',
                                          width: 20),
                                    ),
                                  ),
                                  Expanded(
                                    child: Wrap(
                                      direction: Axis.horizontal,
                                      children: <Widget>[
                                        Text(
                                          "Paytm",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.only(right: 8),
                                      child: MaterialButton(
                                        child: Text("Link Wallet"),
                                        onPressed: () {},
                                        shape: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50)),
                                          borderSide: BorderSide(
                                            color: Colors.green[
                                                300], //Color of the border
                                            style: BorderStyle
                                                .solid, //Style of the border
                                            width: 2, //width of the border
                                          ),
                                        ),
                                        textColor: Colors.green[300],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.all(21),
                                      child: Image.asset(
                                          'assets/images/MobiKwik.png',
                                          width: 20),
                                    ),
                                  ),
                                  Expanded(
                                    child: Wrap(
                                      direction: Axis.horizontal,
                                      children: <Widget>[
                                        Text(
                                          "MobiKwik",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.only(right: 8),
                                      child: MaterialButton(
                                        child: Text("Link Wallet"),
                                        onPressed: () {},
                                        shape: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50)),
                                          borderSide: BorderSide(
                                            color: Colors.green[
                                                300], //Color of the border
                                            style: BorderStyle
                                                .solid, //Style of the border
                                            width: 2, //width of the border
                                          ),
                                        ),
                                        textColor: Colors.green[300],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.all(21),
                                      child: Image.asset(
                                          'assets/images/PhonePe.png',
                                          width: 20),
                                    ),
                                  ),
                                  Expanded(
                                    child: Wrap(
                                      direction: Axis.horizontal,
                                      children: <Widget>[
                                        Text(
                                          "PhonePe",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.only(right: 8),
                                      child: MaterialButton(
                                        child: Text("Link Wallet"),
                                        onPressed: () {},
                                        shape: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50)),
                                          borderSide: BorderSide(
                                            color: Colors.green[
                                                300], //Color of the border
                                            style: BorderStyle
                                                .solid, //Style of the border
                                            width: 2, //width of the border
                                          ),
                                        ),
                                        textColor: Colors.green[300],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 18, left: 24),
                            child: Text(
                              "Other",
                              style: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .subtitle
                                      .color,
                                  fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            color: Colors.white,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (_) =>
                                      ThemeConsumer(child: ThemeDialog()));
                            },
                            child: Padding(
                              padding: EdgeInsets.all(12),
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 16, right: 8),
                                    child: Icon(
                                      Icons.color_lens,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    "Change Theme",
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  Container(
                                    child: Divider(
                                      color: Theme.of(context).dividerColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
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
