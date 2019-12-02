import 'dart:async';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:theme_provider/theme_provider.dart';
import 'package:ibig_play/components/dashboard.dart' as dashboard;

List<CameraDescription> cameras;

Future<Null> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(new MaterialApp(
    home: new SplashScreen(),
    routes: <String, WidgetBuilder>{
      '/HomeScreen': (BuildContext context) => new MyApp()
    },
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      saveThemesOnChange: true,
      loadThemeOnInit: true,
      themes: <AppTheme>[
        defaultTheme(),
        redTheme(),
        AppTheme.light(),
        amberAppTheme(),
        AppTheme.dark(),
      ],
      child: MaterialApp(
        home: ThemeConsumer(
          child: LoginPage(),
        ),
      ),
    );
  }
}

AppTheme amberAppTheme() {
  return AppTheme(
    id: "amber_theme",
    description: "Amber Color Scheme",
    data: ThemeData(
      accentColor: Colors.white,
      focusColor: Colors.amber,
      primaryColor: Colors.red,
      indicatorColor: Color(0xFFe6a410),
      iconTheme: IconThemeData(color: Colors.amber),
      // accentIconTheme: IconThemeData(color: Colors.amber[200]),
      primaryIconTheme: IconThemeData(color: Colors.amber[200]),
      textTheme: TextTheme(
          subtitle: TextStyle(color: Colors.amber),
          subhead: TextStyle(
            color: Color(0xFFd53600),
          ),
          overline: TextStyle(color: Color(0xFFffad91))),
      dividerColor: Colors.amber,
      scaffoldBackgroundColor: Colors.yellow[200],
      buttonColor: Colors.amber,
      dialogBackgroundColor: Colors.grey,
      primaryColorDark: Color(0xFFe6a410),
      appBarTheme: AppBarTheme(color: Colors.amber),
    ),
  );
}

AppTheme defaultTheme() {
  return AppTheme(
    id: "default_theme",
    description: "IBIG Play Color Scheme",
    data: ThemeData(
      cardColor: Color(0xFF6100E2),
      accentColor: Color(0xFF4A03AA),
      focusColor: Color(0xFF9D71D7),
      primaryColor: Color(0xFF6100E2),
      indicatorColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.white),
      primaryIconTheme: IconThemeData(color: Colors.white60),
      textTheme: TextTheme(
          subtitle: TextStyle(color: Colors.white),
          subhead: TextStyle(color: Colors.white),
          overline: TextStyle(color: Colors.white60)),
      dividerColor: Colors.white54,
      scaffoldBackgroundColor: Color(0xFF27024A),
      buttonColor: Colors.amber,
      dialogBackgroundColor: Colors.grey,
      primaryColorDark: Color(0xFF320072),
      appBarTheme: AppBarTheme(color: Color(0xFF4A03AA)),
    ),
  );
}

AppTheme redTheme() {
  return AppTheme(
    id: "red_theme",
    description: "Red Color Scheme",
    data: ThemeData(
      cardColor: Color(0xFFEA3F3F),
      accentColor: Colors.white,
      focusColor: Color(0xFFFF4D4D),
      primaryColor: Colors.red,
      indicatorColor: Colors.white,
      iconTheme: IconThemeData(color: Color(0xFFAE0202)),
      primaryIconTheme: IconThemeData(color: Color(0xFFFF7676)),
      textTheme: TextTheme(
          subtitle: TextStyle(color: Color(0xFFAE0202)),
          subhead: TextStyle(color: Colors.white),
          overline: TextStyle(color: Colors.white60)),
      dividerColor: Colors.white54,
      scaffoldBackgroundColor: Color(0xFF270000),
      buttonColor: Colors.amber,
      dialogBackgroundColor: Colors.grey,
      primaryColorDark: Color(0xFF8B0D04),
      appBarTheme: AppBarTheme(color: Color(0xFFAE0202)),
    ),
  );
}

class EnterExitRoute extends PageRouteBuilder {
  final Widget enterPage;
  final Widget exitPage;
  EnterExitRoute({this.exitPage, this.enterPage})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              enterPage,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              Stack(
                children: <Widget>[
                  SlideTransition(
                    position: new Tween<Offset>(
                      begin: const Offset(0.0, 0.0),
                      end: const Offset(-1.0, 0.0),
                    ).animate(animation),
                    child: exitPage,
                  ),
                  SlideTransition(
                    position: new Tween<Offset>(
                      begin: const Offset(1.0, 0.0),
                      end: Offset.zero,
                    ).animate(animation),
                    child: enterPage,
                  )
                ],
              ),
        );
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/HomeScreen');
  }

  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bg.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 120.0,
                    child: Image.asset(
                      "assets/images/loginlogo.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    'IBIG',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'Righteous-Regular',
                        fontSize: 40,
                        letterSpacing: 5),
                  ),
                  Text(
                    'PLAY',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'Righteous-Regular',
                        fontSize: 24,
                        letterSpacing: 10),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextStyle style = new TextStyle(
      fontFamily: 'Raleway-Light', fontSize: 18.0, color: Colors.white);
  TextEditingController emailController = new TextEditingController();

  @override
  void initState() {
    super.initState();
    this.emailController.text = "";
  }

  @override
  Widget build(BuildContext context) {
    final phoneField = TextField(
      controller: emailController,
      obscureText: false,
      style: style,
      keyboardType: TextInputType.number,
      onTap: () => this.setState(() {
        if (emailController.text == "") {
          this.emailController.text = "+91 ";
        }
      }),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(30.0, 15.0, 5.0, 5.0),
        hintText: "+91 Mobile Number",
        hintStyle: TextStyle(
            fontSize: 16.0, color: Colors.white60, fontFamily: 'Raleway-Light'),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
          borderSide: BorderSide(color: Color(0xFF0097e6), width: 2.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
          borderSide: BorderSide(color: Colors.white60, width: 1.4),
        ),
      ),
    );
    final loginButon = MaterialButton(
      minWidth: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(top: 10, left: 0, right: 0, bottom: 10),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => ThemeConsumer(child: dashboard.OtherPage(cameras)),
          ),
        );
      },
      color: Color(0xFFfccb30),
      shape: StadiumBorder(),
      child: Text("LOGIN",
          textAlign: TextAlign.center,
          style: style.copyWith(
              color: Colors.white, fontWeight: FontWeight.w400, fontSize: 16)),
    );
    final fbtn = MaterialButton(
        padding: EdgeInsets.only(top: 10, left: 0, right: 0, bottom: 10),
        onPressed: () {
          // Auth.Authentication.getJsonData(emailController.text,passController.text);
        },
        color: Color(0xFF5271a2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        child: Row(
          children: <Widget>[
            Padding(
              child: new Icon(
                FontAwesomeIcons.facebookSquare,
                color: Colors.white70,
              ),
              padding: EdgeInsets.only(left: 8, right: 5),
            ),
            Text("Facebook",
                textAlign: TextAlign.center,
                style: style.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 16)),
          ],
        ));
    final googlebtn = MaterialButton(
      // minWidth: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(top: 10, left: 0, right: 0, bottom: 10),
      onPressed: () {
        // Auth.Authentication.getJsonData(emailController.text,passController.text);
      },
      color: Color(0xFFdd4b39),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: Row(
        children: <Widget>[
          Padding(
            child: new Icon(
              FontAwesomeIcons.googlePlusSquare,
              color: Colors.white70,
            ),
            padding: EdgeInsets.only(left: 8, right: 5),
          ),
          Text("Google",
              textAlign: TextAlign.center,
              style: style.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 16)),
        ],
      ),
    );
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bg.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 120.0,
                    child: Image.asset(
                      "assets/images/loginlogo.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    'IBIG',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'Righteous-Regular',
                        fontSize: 40,
                        letterSpacing: 5),
                  ),
                  Text(
                    'PLAY',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'Righteous-Regular',
                        fontSize: 24,
                        letterSpacing: 10),
                  ),
                  SizedBox(height: 30.0),
                  Text(
                    'Login Using Phone Number',
                    style: TextStyle(
                        fontWeight: FontWeight.w100,
                        color: Colors.white70,
                        fontFamily: 'Righteous-Regular',
                        fontSize: 16),
                  ),
                  SizedBox(height: 10.0),
                  phoneField,
                  SizedBox(
                    height: 25.0,
                  ),
                  loginButon,
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(children: <Widget>[
                    Expanded(
                      child: new Container(
                          margin:
                              const EdgeInsets.only(left: 10.0, right: 20.0),
                          child: Divider(
                            color: Colors.white60,
                            height: 36,
                          )),
                    ),
                    Text("OR", style: TextStyle(color: Colors.white60)),
                    Expanded(
                      child: new Container(
                          margin:
                              const EdgeInsets.only(left: 20.0, right: 10.0),
                          child: Divider(
                            color: Colors.white60,
                            height: 36,
                          )),
                    ),
                  ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          child: fbtn,
                          padding: EdgeInsets.only(
                              bottom: 0, right: 5, top: 0, left: 5),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          child: googlebtn,
                          padding: EdgeInsets.only(
                              bottom: 0, right: 5, top: 0, left: 5),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
