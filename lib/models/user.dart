import 'package:flutter/foundation.dart';

class User with ChangeNotifier{
  int id;
  String fname;
  String lname;
  String phone;
  int online_id;

  User({this.id, this.fname, this.lname,this.phone,this.online_id});
  int get getOnline_id => online_id;
  
  void addUser(String _phone, int _id){
    online_id = _id;
    phone = _phone;
    notifyListeners();
  }

  @override
  String toString(){
    return "$phone";  
  }
}