import 'package:flutter/material.dart';

class Message with ChangeNotifier{
  int id;
  int receiver;
  int sender;
  String message;
  int read;
  int received;
  bool isMessageRead = true;

  Message({this.id, this.receiver, this.sender,this.message,this.read,this.received});

  String get newMessage => message;
  bool get getIsMessageRead => isMessageRead;
  
  Object get messageObj => {
    "message":message,
    "sender":sender,
    "reciever":receiver,
    "read":read,
  };
  
  void addMessage(String _message, int _receiver, int _sender, int _read){
    message = _message;
    receiver = _receiver;
    sender = _sender;
    read = _read;
    notifyListeners();
  }
  void IsMessageRead(bool val){
    isMessageRead = val;
    notifyListeners();  
  }
}
