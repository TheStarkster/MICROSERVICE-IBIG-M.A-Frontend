import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:theme_provider/theme_provider.dart';

class Game extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: <Widget>[
          Image.network(
              'https://i.pinimg.com/originals/91/57/ef/9157efb8306f24a414205f6ec622a61c.png',
              width: 150),
          SizedBox(height: 6),
          Text(
            "POOL",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 12, color: Colors.black),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                FontAwesomeIcons.rupeeSign,
                size: 12,
                color: Colors.green[300],
              ),
              Text(
                "5,463",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Colors.green[300],
                ),
              ),
            ],
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Wrap(
                direction: Axis.horizontal,
                children: <Widget>[
                  Text(
                    "₹546546 Won This Week",
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4), color: Colors.white),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height + 460) / 4;
    final double itemWidth = size.width / 2;
    return ThemeProvider(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              TrendingCardList(),
              Padding(
                padding: EdgeInsets.only(left: 8, top: 28, bottom: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Most Played Games",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).textTheme.subhead.color,
                        fontSize: 16),
                  ),
                ),
              ),
              MostCardList(),
              Padding(
                padding: EdgeInsets.only(left: 12, top: 24, bottom: 6),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "All Games",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).textTheme.subhead.color,
                        fontSize: 16),
                  ),
                ),
              ),
              CustomScrollView(
                shrinkWrap: true,
                primary: false,
                slivers: <Widget>[
                  SliverPadding(
                    padding: const EdgeInsets.all(8),
                    sliver: SliverGrid.count(
                      crossAxisSpacing: 4,
                      mainAxisSpacing: 4,
                      childAspectRatio: (itemWidth / itemHeight),
                      crossAxisCount: 3,
                      children: <Widget>[
                        Game(),
                        Game(),
                        Game(),
                        Game(),
                        Game(),
                        Game(),
                      ],
                    ),
                  ),
                ],
              ),
              //Banner After 6 Games...
              Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://daunergames.com/wp-content/uploads/2018/06/20180409061231_PromotionalBanner_llpool.jpg'),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter),
                ),
              ),
              CustomScrollView(
                shrinkWrap: true,
                primary: false,
                slivers: <Widget>[
                  SliverPadding(
                    padding: const EdgeInsets.all(8),
                    sliver: SliverGrid.count(
                      crossAxisSpacing: 4,
                      mainAxisSpacing: 4,
                      childAspectRatio: (itemWidth / itemHeight),
                      crossAxisCount: 3,
                      children: <Widget>[
                        Game(),
                        Game(),
                        Game(),
                        Game(),
                        Game(),
                        Game(),
                      ],
                    ),
                  ),
                ],
              ),
              //Banner After 6 Games...
              Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://daunergames.com/wp-content/uploads/2018/06/20180409061231_PromotionalBanner_llpool.jpg'),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter),
                ),
              ),
              CustomScrollView(
                shrinkWrap: true,
                primary: false,
                slivers: <Widget>[
                  SliverPadding(
                    padding: const EdgeInsets.all(8),
                    sliver: SliverGrid.count(
                      crossAxisSpacing: 4,
                      mainAxisSpacing: 4,
                      childAspectRatio: (itemWidth / itemHeight),
                      crossAxisCount: 3,
                      children: <Widget>[
                        Game(),
                        Game(),
                        Game(),
                        Game(),
                        Game(),
                        Game(),
                      ],
                    ),
                  ),
                ],
              ),
              //Host Game Play Container...
              Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Play With Friends",
                      style: TextStyle(color: Colors.black),
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 8, right: 8),
                            child: MaterialButton(
                              color: Colors.green[300],
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.add_circle,
                                    color: Theme.of(context)
                                        .primaryIconTheme
                                        .color,
                                  ),
                                  Text(
                                    "Create",
                                    style: TextStyle(
                                        color: Theme.of(context)
                                            .textTheme
                                            .subtitle
                                            .color),
                                  ),
                                ],
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 8, right: 8),
                            child: MaterialButton(
                              color: Colors.blueGrey[300],
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    FontAwesomeIcons.trophy,
                                    color: Theme.of(context)
                                        .primaryIconTheme
                                        .color,
                                    size: 18,
                                  ),
                                  Text(
                                    "Join",
                                    style: TextStyle(
                                        color: Theme.of(context)
                                            .textTheme
                                            .subtitle
                                            .color),
                                  ),
                                ],
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 8, right: 8),
                            child: MaterialButton(
                              color: Colors.blueGrey[300],
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.history,
                                    color: Theme.of(context)
                                        .primaryIconTheme
                                        .color,
                                  ),
                                  Text(
                                    "Active",
                                    style: TextStyle(
                                        color: Theme.of(context)
                                            .textTheme
                                            .subtitle
                                            .color),
                                  ),
                                ],
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TrendingCardList extends StatefulWidget {
  @override
  _TrendingCardList createState() => _TrendingCardList();
}

class _TrendingCardList extends State<TrendingCardList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.only(top: 20),
      child: Container(
        height: 210,
        decoration: BoxDecoration(color: Colors.transparent),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            TCard(),
            TCard(),
            TCard(),
            TCard(),
          ],
        ),
      ),
    );
  }
}

class TCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 80,
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Color(0xFF4900a9),
        image: DecorationImage(
          image: NetworkImage(
              'https://daunergames.com/wp-content/uploads/2018/06/20180409061231_PromotionalBanner_llpool.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class MostCardList extends StatefulWidget {
  @override
  _MostCardListState createState() => _MostCardListState();
}

class _MostCardListState extends State<MostCardList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      decoration: BoxDecoration(color: Colors.transparent),
      padding: EdgeInsets.only(left: 4),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          MCard(),
          MCard(),
          MCard(),
          MCard(),
        ],
      ),
    );
  }
}

class MCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: MediaQuery.of(context).size.width / 2,
      child: Padding(
        padding: EdgeInsets.all(4),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(4)),
            image: DecorationImage(
                image: NetworkImage(
                    'https://lh3.googleusercontent.com/eJ9OJnbRer1jjg5ZeNAnTXKcGd2B_NEqxCp2UsefcCABeFBaj_pNl_WKYBjup2GVGGc'),
                fit: BoxFit.cover,
                alignment: Alignment.topCenter),
          ),
          child: ClipRRect(
            borderRadius: new BorderRadius.all(Radius.circular(4)),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Expanded(
                    child: Stack(
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: EdgeInsets.all(4),
                            child: Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(right: 8, left: 12),
                                  child: Icon(
                                    FontAwesomeIcons.userFriends,
                                    color: Colors.white,
                                    size: 14,
                                  ),
                                ),
                                Text(
                                  "84563",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Image.network(
                          'https://lh3.googleusercontent.com/eJ9OJnbRer1jjg5ZeNAnTXKcGd2B_NEqxCp2UsefcCABeFBaj_pNl_WKYBjup2GVGGc',
                          width: 50,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Text(
                          "FRUIT CHOP",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          "Total Prize",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          "Fee",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 2, bottom: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          "₹98956",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          "₹6",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: [0.26, 0.8],
                  colors: [
                    Color(0xFF2ecc71),
                    Colors.white10,
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: <Widget>[
//             RaisedButton(
//               child: Text("Change Theme"),
//               onPressed: ThemeProvider.controllerOf(context).nextTheme,
//               color: Colors.white,
//             ),
//           ],
//         ),
