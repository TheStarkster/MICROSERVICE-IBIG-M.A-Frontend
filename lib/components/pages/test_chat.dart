import 'package:flutter/material.dart';

class TestChat extends StatefulWidget {
  @override
  _TestChatState createState() => _TestChatState();
}

class _TestChatState extends State<TestChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.bottomCenter,
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8))
            ),
            labelText: 'Test',
          ),
          focusNode: FocusNode(),
        ),
      ),
    );
  }
}

// Maine Scaffold ko Material App m bhi leke dekh liya but nhi kaam karra.................!!