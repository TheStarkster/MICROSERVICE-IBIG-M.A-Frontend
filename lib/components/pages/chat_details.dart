import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:ibig_play/components/dashboard.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
// class ChatDetails extends StatefulWidget {
//   @override
//   _ChatDetailsState createState() => _ChatDetailsState();
// }

// class _ChatDetailsState extends State<ChatDetails> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         // appBar: AppBar(
//         //   elevation: 0.4,
//         //   iconTheme: IconThemeData(color: Colors.black),
//         //   backgroundColor: Colors.white,
//         //   title: Row(
//         //     children: <Widget>[
//         //       Container(
//         //         width: 40,
//         //         height: 40,
//         //         margin: EdgeInsets.fromLTRB(0, 5, 10, 0),
//         //         child: CircleAvatar(
//         //           backgroundImage: NetworkImage('https://i.pravatar.cc/110'),
//         //           backgroundColor: Colors.grey[200],
//         //           minRadius: 30,
//         //         ),
//         //       ),
//         //       Column(
//         //         mainAxisAlignment: MainAxisAlignment.center,
//         //         crossAxisAlignment: CrossAxisAlignment.start,
//         //         children: <Widget>[
//         //           Text(
//         //             'Selina Kyle',
//         //             style: TextStyle(color: Colors.black),
//         //           ),
//         //           Text(
//         //             'Online Now',
//         //             style: TextStyle(
//         //               color: Colors.grey[400],
//         //               fontSize: 12,
//         //             ),
//         //           )
//         //         ],
//         //       )
//         //     ],
//         //   ),
//         // ),
//         body: Center(
//           child: SingleChildScrollView(
//                 // width: MediaQuery.of(context).size.width,
//                 // height: MediaQuery.of(context).size.height,
//                 padding: EdgeInsets.only(
//              bottom: MediaQuery.of(context).viewInsets.bottom),
//                 child:Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                   Container(
//                     color: Colors.red,
//                     width: MediaQuery.of(context).size.width,
//                     height: MediaQuery.of(context).size.height/1.8,
//                   ),
//                   Container(
//                     width: MediaQuery.of(context).size.width,
//                     padding: EdgeInsets.all(10),
//                     decoration: BoxDecoration(color: Colors.white, boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey[300],
//                         offset: Offset(-2, 0),
//                         blurRadius: 5,
//                       ),
//                     ]),
//                     child: Row(
//                       children: <Widget>[
//                         IconButton(
//                           onPressed: () {},
//                           icon: Icon(
//                             Icons.camera,
//                             color: Color(0xff3E8DF3),
//                           ),
//                         ),
//                         IconButton(
//                           onPressed: () {},
//                           icon: Icon(
//                             Icons.image,
//                             color: Color(0xff3E8DF3),
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.only(left: 15),
//                         ),
//                         Expanded(
//                           child: TextFormField(
//                             keyboardType: TextInputType.text,
//                             decoration: InputDecoration(
//                               hintText: 'Enter Message',
//                               border: InputBorder.none,
//                             ),
//                           ),
//                         ),
//                         IconButton(
//                           onPressed: () {},
//                           icon: Icon(
//                             Icons.send,
//                             color: Color(0xff3E8DF3),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               )
//             )
//           ),
//     );
//   }
// }

// class Bubble extends StatelessWidget {
//   final bool isMe;

//   final String message;

//   Bubble({this.message, this.isMe});

//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.all(5),
//       padding: isMe ? EdgeInsets.only(left: 40) : EdgeInsets.only(right: 40),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: <Widget>[
//           Column(
//             mainAxisAlignment:
//                 isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
//             crossAxisAlignment:
//                 isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
//             children: <Widget>[
//               Container(
//                 padding: EdgeInsets.all(15),
//                 decoration: BoxDecoration(
//                   gradient: isMe
//                       ? LinearGradient(
//                           begin: Alignment.topRight,
//                           end: Alignment.bottomLeft,
//                           stops: [
//                               0.1,
//                               1
//                             ],
//                           colors: [
//                               Color(0xFFF6D365),
//                               Color(0xFFFDA085),
//                             ])
//                       : LinearGradient(
//                           begin: Alignment.topRight,
//                           end: Alignment.bottomLeft,
//                           stops: [
//                               0.1,
//                               1
//                             ],
//                           colors: [
//                               Color(0xFFEBF5FC),
//                               Color(0xFFEBF5FC),
//                             ]),
//                   borderRadius: isMe
//                       ? BorderRadius.only(
//                           topRight: Radius.circular(15),
//                           topLeft: Radius.circular(15),
//                           bottomRight: Radius.circular(0),
//                           bottomLeft: Radius.circular(15),
//                         )
//                       : BorderRadius.only(
//                           topRight: Radius.circular(15),
//                           topLeft: Radius.circular(15),
//                           bottomRight: Radius.circular(15),
//                           bottomLeft: Radius.circular(0),
//                         ),
//                 ),
//                 child: Column(
//                   crossAxisAlignment:
//                       isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
//                   children: <Widget>[
//                     Text(
//                       message,
//                       textAlign: isMe ? TextAlign.end : TextAlign.start,
//                       style: TextStyle(
//                         color: isMe ? Colors.white : Colors.grey,
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }




// Container(
//                 width: MediaQuery.of(context).size.width,
//                 padding: EdgeInsets.all(10),
//                 decoration: BoxDecoration(color: Colors.white, boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey[300],
//                     offset: Offset(-2, 0),
//                     blurRadius: 5,
//                   ),
//                 ]),
//                 child: Row(
//                   children: <Widget>[
//                     IconButton(
//                       onPressed: () {},
//                       icon: Icon(
//                         Icons.camera,
//                         color: Color(0xff3E8DF3),
//                       ),
//                     ),
//                     IconButton(
//                       onPressed: () {},
//                       icon: Icon(
//                         Icons.image,
//                         color: Color(0xff3E8DF3),
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.only(left: 15),
//                     ),
//                     Expanded(
//                       child: TextFormField(
//                         keyboardType: TextInputType.text,
//                         decoration: InputDecoration(
//                           hintText: 'Enter Message',
//                           border: InputBorder.none,
//                         ),
//                       ),
//                     ),
//                     IconButton(
//                       onPressed: () {},
//                       icon: Icon(
//                         Icons.send,
//                         color: Color(0xff3E8DF3),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),








// Column(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: <Widget>[
//               Container(
//                 width: MediaQuery.of(context).size.width,
//                 padding: EdgeInsets.all(10),
//                 decoration: BoxDecoration(color: Colors.white, boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey[300],
//                     offset: Offset(-2, 0),
//                     blurRadius: 5,
//                   ),
//                 ]),
//                 child: Row(
//                   children: <Widget>[
//                     IconButton(
//                       onPressed: () {},
//                       icon: Icon(
//                         Icons.camera,
//                         color: Color(0xff3E8DF3),
//                       ),
//                     ),
//                     IconButton(
//                       onPressed: () {},
//                       icon: Icon(
//                         Icons.image,
//                         color: Color(0xff3E8DF3),
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.only(left: 15),
//                     ),
//                     Expanded(
//                       child: TextFormField(
//                         keyboardType: TextInputType.text,
//                         decoration: InputDecoration(
//                           hintText: 'Enter Message',
//                           border: InputBorder.none,
//                         ),
//                       ),
//                     ),
//                     IconButton(
//                       onPressed: () {},
//                       icon: Icon(
//                         Icons.send,
//                         color: Color(0xff3E8DF3),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),





class ChatDetails extends StatefulWidget {
  final String receiver;
  final WebSocketChannel channel;
  final String ownerPhone;
  final int receiver_id;
  ChatDetails({this.receiver,this.channel,this.receiver_id,this.ownerPhone});
  @override
  _ChatDetailsState createState() => _ChatDetailsState();
}

class _ChatDetailsState extends State<ChatDetails> {
  TextEditingController _controller;
  int value;

  @override
  void initState(){
    super.initState();
    _controller = TextEditingController();
    value = 0;
   
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Form(
              child: TextFormField(
                controller: _controller,
                decoration: InputDecoration(labelText: 'Enter message'),
              ),
            ),
            // Container(
            //   width: MediaQuery.of(context).size.width,
            //   height: MediaQuery.of(context).size.height/2,
            //   child: ListView.builder(
            //     itemBuilder: (BuildContext context, int index) {
            //       final message = widget.messageList[index];
            //       return message;
            //     },
            //     itemCount: 0,

            //   )
            // )
            // StreamBuilder(
            //   stream: channel.stream,
            //   builder: (context, snapshot) {
            //     return Padding(
            //       padding: const EdgeInsets.symmetric(vertical: 24.0),
            //       child: Text(snapshot.hasData ? '${snapshot.data}' : ''),
            //     );
            //   },
            // ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _sendMessage,
        tooltip: 'Send message',
        child: Icon(Icons.send),
      ),
    );
  }

  void _sendMessage() {
    if (_controller.text.isNotEmpty) {
      widget.channel.sink.add(jsonEncode({
        "message":_controller.text,
        "receiver":"/"+ widget.receiver,
        "sender":"74",
        "sender_phone":widget.ownerPhone,
        "receiver_id":widget.receiver_id
      }));
      // setState(() {
      //     widget.messageList.insert(widget.messageList.length, 
      //       Container(
      //         child: Bubble(isMe: true,message: _controller.text)
      //     ));
      //   });
      _controller.text = "";
    }
  }

  // @override
  // void dispose() {
  //   widget.channel.sink.close();
  //   super.dispose();
  // }
}