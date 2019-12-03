import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:theme_provider/theme_provider.dart';

class Wallet extends StatefulWidget {
  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(12),
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Theme.of(context).cardColor == Colors.grey[800]
                          ? Theme.of(context).cardColor
                          : Colors.white,
                      image: DecorationImage(
                          image: AssetImage('assets/images/win.png'),
                          alignment: Alignment.topLeft),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(6),
                        child: Text(
                          "₹0",
                          style: TextStyle(
                              fontSize: 32,
                              color: Theme.of(context).textTheme.title.color),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 12, bottom: 4),
                        child: Text(
                          "WINNING CASH BALANCE",
                          style: TextStyle(
                              fontSize: 12,
                              color: Theme.of(context).textTheme.title.color),
                        ),
                      ),
                      MaterialButton(
                        child: Text(
                          "Withdraw",
                          style:
                              TextStyle(color: Colors.green[300], fontSize: 12),
                        ),
                        onPressed: () {},
                        shape: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          borderSide: BorderSide(
                            color: Colors.green[300], //Color of the border
                            style: BorderStyle.solid, //Style of the border
                            width: 2, //width of the border
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(12),
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Theme.of(context).cardColor == Colors.grey[800]
                          ? Theme.of(context).cardColor
                          : Colors.white,
                      image: DecorationImage(
                          image: AssetImage('assets/images/bonus.png'),
                          alignment: Alignment.topLeft),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(6),
                        child: Text(
                          "₹0",
                          style: TextStyle(
                              fontSize: 32,
                              color: Theme.of(context).textTheme.title.color),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 12, bottom: 4),
                        child: Text(
                          "BONUS CASH BALANCE",
                          style: TextStyle(
                              fontSize: 12,
                              color: Theme.of(context).textTheme.title.color),
                        ),
                      ),
                      MaterialButton(
                        child: Text(
                          "Refer & Earn",
                          style:
                              TextStyle(color: Colors.green[300], fontSize: 12),
                        ),
                        onPressed: () {},
                        shape: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          borderSide: BorderSide(
                            color: Colors.green[300], //Color of the border
                            style: BorderStyle.solid, //Style of the border
                            width: 2, //width of the border
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Divider(
                  color: Theme.of(context).dividerColor,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(12),
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Theme.of(context).cardColor == Colors.grey[800]
                          ? Theme.of(context).cardColor
                          : Colors.white,
                      image: DecorationImage(
                          image: AssetImage('assets/images/deposit.png'),
                          alignment: Alignment.topLeft),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(6),
                        child: Text(
                          "₹0",
                          style: TextStyle(
                              fontSize: 32,
                              color: Theme.of(context).textTheme.title.color),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 12, bottom: 4),
                        child: Text(
                          "DEPOSIT CASH BALANCE",
                          style: TextStyle(
                              fontSize: 12,
                              color: Theme.of(context).textTheme.title.color),
                        ),
                      ),
                      MaterialButton(
                        child: Text(
                          "Add",
                          style:
                              TextStyle(color: Colors.green[300], fontSize: 12),
                        ),
                        onPressed: () {},
                        shape: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          borderSide: BorderSide(
                            color: Colors.green[300], //Color of the border
                            style: BorderStyle.solid, //Style of the border
                            width: 2, //width of the border
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                child: Divider(
                  color: Theme.of(context).dividerColor,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(12),
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Theme.of(context).cardColor == Colors.grey[800]
                          ? Theme.of(context).cardColor
                          : Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 18),
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(right: 8),
                                child: Icon(
                                  FontAwesomeIcons.coins,
                                  size: 21,
                                  color: Theme.of(context).cardColor ==
                                          Color(0xFF6100E2)
                                      ? Colors.black
                                      : Theme.of(context)
                                          .primaryIconTheme
                                          .color,
                                ),
                              ),
                              Text(
                                "30",
                                style: TextStyle(
                                    fontSize: 21,
                                    color: Theme.of(context)
                                        .textTheme
                                        .title
                                        .color),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        // padding: EdgeInsets.only(left: 12, bottom: 4),
                        child: Text(
                          "TOKEN BALANCE",
                          style: TextStyle(
                              fontSize: 12,
                              color: Theme.of(context).textTheme.title.color),
                        ),
                      ),
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.only(left: 8, right: 8),
                        child: MaterialButton(
                          child: Text(
                            "Earn More",
                            style: TextStyle(
                                color: Colors.green[300], fontSize: 12),
                          ),
                          onPressed: () {},
                          shape: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            borderSide: BorderSide(
                              color: Colors.green[300], //Color of the border
                              style: BorderStyle.solid, //Style of the border
                              width: 2, //width of the border
                            ),
                          ),
                        ),
                      ))
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(12),
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Theme.of(context).cardColor == Colors.grey[800]
                          ? Theme.of(context).cardColor
                          : Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 16, right: 8),
                              child: Icon(
                                Icons.history,
                                color: Theme.of(context).cardColor ==
                                        Color(0xFF6100E2)
                                    ? Colors.black
                                    : Theme.of(context).primaryIconTheme.color,
                              ),
                            ),
                            Text(
                              "Transaction History",
                              style: TextStyle(
                                  color:
                                      Theme.of(context).textTheme.title.color),
                            ),
                            Container(
                              child: Divider(
                                color: Theme.of(context).dividerColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 16, right: 8),
                              child: Icon(
                                Icons.help,
                                color: Theme.of(context).cardColor ==
                                        Color(0xFF6100E2)
                                    ? Colors.black
                                    : Theme.of(context).primaryIconTheme.color,
                              ),
                            ),
                            Text(
                              "Help",
                              style: TextStyle(
                                  color:
                                      Theme.of(context).textTheme.title.color),
                            ),
                            Container(
                              child: Divider(
                                color: Theme.of(context).dividerColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 16, right: 8),
                              child: Icon(
                                Icons.settings,
                                color: Theme.of(context).cardColor ==
                                        Color(0xFF6100E2)
                                    ? Colors.black
                                    : Theme.of(context).primaryIconTheme.color,
                              ),
                            ),
                            Text(
                              "Settings",
                              style: TextStyle(
                                  color:
                                      Theme.of(context).textTheme.title.color),
                            ),
                            Container(
                              child: Divider(
                                color: Theme.of(context).dividerColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 16, right: 8),
                              child: Icon(
                                Icons.headset_mic,
                                color: Theme.of(context).cardColor ==
                                        Color(0xFF6100E2)
                                    ? Colors.black
                                    : Theme.of(context).primaryIconTheme.color,
                              ),
                            ),
                            Text(
                              "Chat Support",
                              style: TextStyle(
                                  color:
                                      Theme.of(context).textTheme.title.color),
                            ),
                            Container(
                              child: Divider(
                                color: Theme.of(context).dividerColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 16, right: 8),
                              child: Icon(
                                Icons.insert_drive_file,
                                color: Theme.of(context).cardColor ==
                                        Color(0xFF6100E2)
                                    ? Colors.black
                                    : Theme.of(context).primaryIconTheme.color,
                              ),
                            ),
                            Text(
                              "Terms & Condition",
                              style: TextStyle(
                                  color:
                                      Theme.of(context).textTheme.title.color),
                            ),
                            Container(
                              child: Divider(
                                color: Theme.of(context).dividerColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 16, right: 8),
                              child: Icon(
                                Icons.info,
                                color: Theme.of(context).cardColor ==
                                        Color(0xFF6100E2)
                                    ? Colors.black
                                    : Theme.of(context).primaryIconTheme.color,
                              ),
                            ),
                            Text(
                              "Privacy Policy",
                              style: TextStyle(
                                  color:
                                      Theme.of(context).textTheme.title.color),
                            ),
                            Container(
                              child: Divider(
                                color: Theme.of(context).dividerColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 16, right: 8),
                              child: Icon(
                                Icons.gavel,
                                color: Theme.of(context).cardColor ==
                                        Color(0xFF6100E2)
                                    ? Colors.black
                                    : Theme.of(context).primaryIconTheme.color,
                              ),
                            ),
                            Text(
                              "Legal",
                              style: TextStyle(
                                  color:
                                      Theme.of(context).textTheme.title.color),
                            ),
                            Container(
                              child: Divider(
                                color: Theme.of(context).dividerColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 16, right: 8),
                              child: Icon(
                                Icons.star,
                                color: Theme.of(context).cardColor ==
                                        Color(0xFF6100E2)
                                    ? Colors.black
                                    : Theme.of(context).primaryIconTheme.color,
                              ),
                            ),
                            Text(
                              "Rate Us",
                              style: TextStyle(
                                  color:
                                      Theme.of(context).textTheme.title.color),
                            ),
                            Container(
                              child: Divider(
                                color: Theme.of(context).dividerColor,
                              ),
                            ),
                          ],
                        ),
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
