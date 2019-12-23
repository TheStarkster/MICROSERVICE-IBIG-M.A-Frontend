class User {
  final int id;
  final String fname;
  final String lname;
  final String phone;
  final int online_id;

  User({this.id, this.fname, this.lname,this.phone,this.online_id});
  int get getOnline_id => online_id;
  
  @override
  String toString(){
    return "$phone";  
  }
}