import 'dart:convert';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:ibig_play/models/messages.dart';
import 'package:provider/provider.dart';
import 'package:theme_provider/theme_provider.dart';
import 'components/dashboard.dart';
import 'package:http/http.dart' as HTTP;
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:ibig_play/db_handlers/handler.dart';

List<CameraDescription> cameras;
class Otp extends StatefulWidget{
  final String otp;
  final String phone;
  Otp({this.otp, this.phone});

  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  TextStyle style = new TextStyle(
      fontFamily: 'Raleway-Light', fontSize: 18.0, color: Colors.white);
  final FirebaseMessaging _messaging = new FirebaseMessaging();
  TextEditingController emailController = new TextEditingController();

  get http => null;

  @override
  Widget build(BuildContext context){
    final phoneField = TextField(
      controller: emailController,
      obscureText: false,
      style: style,
      keyboardType: TextInputType.number,
      onTap: () => {},
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(30.0, 15.0, 5.0, 5.0),
        hintText: "OTP",
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
    return ThemeProvider(
      child: Scaffold(
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
                    SizedBox(height: 80,),
                    Text(
                    'Enter OTP Here',
                      style: TextStyle(
                          fontWeight: FontWeight.w100,
                          color: Colors.white70,
                          fontFamily: 'Righteous-Regular',
                          fontSize: 16),
                    ),
                    SizedBox(height: 10.0),
                    phoneField,
                    SizedBox(height: 10),
                    MaterialButton(
                      minWidth: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(top: 10, left: 0, right: 0, bottom: 10),
                      onPressed: () async{
                        if(widget.otp == emailController.text){
                          var token = await _messaging.getToken();
                          var onlineID = await HTTP.get('http://18.219.197.206:2643/register-user/'+widget.phone.split(" ").toList()[1]+"/"+token);
                          print(jsonDecode(onlineID.body));
                          print(jsonDecode(onlineID.body)["id"]);
                          print(widget.phone.split(" ").toList()[1]);
                          var dbHandler_obj = new DbHandlers();
                          await dbHandler_obj.GetUserFromTable(ifnotExistThenSave: widget.phone.split(" ").toList()[1],online_id: int.parse(jsonDecode(onlineID.body)["id"]));
                          await dbHandler_obj.CreateMessageTable();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => ThemeConsumer(child: ChangeNotifierProvider(child: OtherPage(cameras: cameras,phone:widget.phone.split(" ").toList()[1],isMessageRead: true,),builder: (_) => Message())),
                            ),
                          );
                        }
                      },
                      color: Color(0xFFfccb30),
                      shape: StadiumBorder(),
                      child: Text("LOGIN",
                          textAlign: TextAlign.center,
                          style: style.copyWith(
                              color: Colors.white, fontWeight: FontWeight.w400, fontSize: 16)),
                    ),
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