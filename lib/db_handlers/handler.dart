import 'package:flutter/material.dart';
import 'package:ibig_play/models/messages.dart';
import 'package:ibig_play/models/user.dart';
import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DbHandlers with ChangeNotifier{
  Future<Database> OpenDB() async{
    final database = openDatabase(
      join(await getDatabasesPath(), 'ibig_play_user.db'),
    );
    return database;
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
  Future<void> CreateMessageTable() async{
    final Database db = await OpenDB();
    await db.execute('CREATE TABLE messages(id INTEGER PRIMARY KEY, message TEXT, receiver INTEGER, sender INTEGER, read INTEGER,received INTEGER)');
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
          "receiver": maps[i]['receiver'],
          "sender": maps[i]['sender'],
          "read": maps[i]['read'],
          "received": maps[i]['received'],
          "message": maps[i]['message'],
        };
      });
  }
  Future<void> SaveMessageToTable(String ifnotExistThenSave,int receiver, int sender,int read,int received) async{
      final Database db = await OpenDB();
      await insertMessage(ifnotExistThenSave,receiver, sender, read,received);
    }
  Map<String, dynamic> toMapUser(String phone,{String lname:"",String fname:"",int online_id, int received}){
    return {
      'phone': phone,
      'online_id':online_id
    };
  }
  Map<String, dynamic> toMapMessage(String message, int receiver, int sender, int read,int received){
    return {
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
  Future<void> insertUser(String phone,{String lname:"",String fname:"",int online_id}) async{
    final Database db = await OpenDB();
    await db.insert('users', toMapUser(phone,online_id: online_id), conflictAlgorithm: ConflictAlgorithm.replace);
  }
  Future<void> insertMessage(String message, int receiver, int sender, int read,int received) async{
    final Database db = await OpenDB();
    // print(toMapMessage(message, receiver, sender, read,received)["message"]);
    // print(toMapMessage(message, receiver, sender, read,received)["read"]);
    await db.insert('messages', toMapMessage(message, receiver, sender, read,received),conflictAlgorithm: ConflictAlgorithm.replace);
  }
  }