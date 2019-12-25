import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ibig_play/models/user.dart';
import 'dart:async';
import 'package:path/path.dart';
import 'package:http/http.dart' as HTTP;
import 'package:sqflite/sqflite.dart';

class DbHandlers with ChangeNotifier{
  Future<Database> OpenDB() async{
    final database = openDatabase(
      join(await getDatabasesPath(), 'ibig_play_user.db'),
    );
    return database;
  }
  Future<void> ReadMessage(List<int> online_id,List<int> local_id) async{
    final Database db = await OpenDB();
    for(int id in local_id){
      await db.update('messages', toMapMessageOnlyRead(1), where: 'id = '+id.toString());
    }
    await HTTP.post('http://18.219.197.206:2643/read-message',body: {
      "message_ids":jsonEncode(online_id)
    });
  }
  Future<List<User>> GetUserFromTable({String ifnotExistThenSave:"",int online_id}) async{
    final Database db = await OpenDB();
    List<Map<String, dynamic>> maps;
    try{
      maps = await db.query('users');
      return List.generate(maps.length, (i) {
        return User(
          id: maps[i]['id'],
          phone: maps[i]['phone'],
          fname: maps[i]['fname'],
          lname: maps[i]['lname'],
          online_id: maps[i]['online_id'],
        );
      });
    }catch(err){
      if(ifnotExistThenSave != ""){
        await db.execute('CREATE TABLE users(id INTEGER PRIMARY KEY, phone TEXT, fname TEXT, lname TEXT,online_id INTEGER)');
        await insertUser(ifnotExistThenSave,online_id: online_id);
        maps = await db.query('users');
        return List.generate(maps.length, (i) {
          return User(
            id: maps[i]['id'],
            phone: maps[i]['phone'],
            fname: maps[i]['fname'],
            lname: maps[i]['lname'],
            online_id: maps[i]['online_id'],
          );
        });
      }else{
        return List.generate(1, (i) {
          return User(
            phone: "",
            fname: "",
            lname: "",
          );
        }); 
      }
    }
  }
  // Future<Object> GetUser() async{
  //   final Database db = await OpenDB();
  //   List<Map<String, dynamic>> maps;
  //   maps = await db.query('users');
  //   return {
  //     "id":maps[0]['id'],
  //     "online_id":maps[0]['online_id'],
  //     "phone":maps[0]['phone']
  //   };
  // }
  Future<void> CreateMessageTable() async{
    final Database db = await OpenDB();
    await db.execute('CREATE TABLE messages(id INTEGER PRIMARY KEY,online_id INTEGER, message TEXT, receiver INTEGER, sender INTEGER, read INTEGER,received INTEGER)');
  }
  Future<Object> GetMessagesFromTable() async{
    final Database db = await OpenDB();
    List<Map<String, dynamic>> maps;
    maps = await db.query('messages');
    for(var item in maps){
      await db.update('messages', toMapMessageOnlyReceived(1),where: 'id = '+item['id'].toString());//vulnurable here...
    }
      return List.generate(maps.length, (i) {
        return {
          "id": maps[i]['id'],
          'online_id': maps[i]['online_id'],
          "receiver": maps[i]['receiver'],
          "sender": maps[i]['sender'],
          "read": maps[i]['read'],
          "received": maps[i]['received'],
          "message": maps[i]['message'],
        };
      });
  }
  Future<void> SaveMessageToTable(int online_id,String ifnotExistThenSave,int receiver, int sender,int read,int received) async{
      final Database db = await OpenDB();
      await insertMessage(online_id,ifnotExistThenSave,receiver, sender, read,received);
    }
  Map<String, dynamic> toMapUser(String phone,{String lname:"",String fname:"",int online_id, int received}){
    return {
      'phone': phone,
      'online_id':online_id
    };
  }
  Map<String, dynamic> toMapMessage(int online_id, String message, int receiver, int sender, int read,int received){
    return {
      'online_id': online_id,
      'message': message,
      'receiver':receiver,
      'sender':sender,
      'read':read,
      'received':received
    };
  }
  Map<String, dynamic> toMapMessageOnlyReceived(int received){
    return {
      'received':received
    };
  }
  Map<String, dynamic> toMapMessageOnlyRead(int read){
    return {
      'read':read
    };
  }
  Future<void> insertUser(String phone,{String lname:"",String fname:"",int online_id}) async{
    final Database db = await OpenDB();
    await db.insert('users', toMapUser(phone,online_id: online_id), conflictAlgorithm: ConflictAlgorithm.replace);
  }
  Future<void> insertMessage(int online_id,String message, int receiver, int sender, int read,int received) async{
    final Database db = await OpenDB();
    await db.insert('messages', toMapMessage(online_id,message, receiver, sender, read,received),conflictAlgorithm: ConflictAlgorithm.replace);
  }
}