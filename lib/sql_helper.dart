import 'package:sqflite/sqflite.dart';

class SqlHelper {
  static final SqlHelper instance = SqlHelper._internal();
  static Database? _database;
  SqlHelper._internal();
  Future<Database> get database async{
    if (_database != null){
      return _database!;
    }
    _database = await _initDatabase();
    return _database!;
  }
  Future<Database> _initDatabase() async {
    final databasePath = await getDatabasesPath();
    final path = '$databasePath/mydatabase.db';
    return await openDatabase(path, version: 1, onCreate: (db, version){
      print("=============================== Db Created");
    });
  }
}