import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart';

class SqlHelper {
  Database? db;
  SqlHelper() {
    initDatabase();
  }

  //Create database tables
  Future<void> CreateTables() async{
    try{
      await db!.execute("""Create table if not exists employee(
        id integer primary key,
        name text,
        email text,
        phoneNumber text
      )""");
    }
    catch(e){
      print("Error in creating Employee tabe: ${e}");
    }
  }
  // Create database on the web or phone.
  void initDatabase() async {
    try {
      if (kIsWeb) {
        // Use the ffi web factory in web apps (flutter or dart)
        var factory = databaseFactoryFfiWeb;
        db = await factory.openDatabase('task10.db');
        // var sqliteVersion =
        //     (await db.rawQuery('select sqlite_version()')).first.values.first;
        print(db.hashCode);
        // print(sqliteVersion); // should print 3.39.3
      } else {
        db = await openDatabase('task10.db', version: 1,
            onCreate: (db, version) {
          print("=============================== Db Created");
        });
      }
    } catch (e) {
      print("Error in Creating the database : ${e}");
    }
  }
}
