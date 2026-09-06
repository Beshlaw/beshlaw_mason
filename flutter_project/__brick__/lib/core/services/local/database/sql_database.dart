import 'dart:async';
import 'package:path/path.dart';
import 'package:scope_digital/core/services/local/constant/local_d_b_constant.dart';
import 'package:sqflite/sqflite.dart';

class SqlDatabase {
  static Database? _db;
  static Future<Database> get db async {
    if (_db != null) return _db!;
    _db = await initDb();
    return _db!;
  }

  static Future<Database> initDb() async {
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, LocalDBConstant.databaseName);
    return await openDatabase(
      path,
      version: LocalDBConstant.databaseVersion,
      onCreate: _onCreate,
      onUpgrade: _onUpgrade,
    );
  }

  static Future<void> _onCreate(Database db, int version) async {
    // Create the initial database schema

    // await db.execute('''
    //     CREATE TABLE users (
    //       id INTEGER PRIMARY KEY AUTOINCREMENT,
    //       name TEXT NOT NULL,
    //       email TEXT NOT NULL UNIQUE
    //     )
    //   ''');
  }

  static Future<void> _onUpgrade(
    Database db,
    int oldVersion,
    int newVersion,
  ) async {
    // Handle database upgrades here

    // await db.execute('''
    //     CREATE TABLE users (
    //       id INTEGER PRIMARY KEY AUTOINCREMENT,
    //       name TEXT NOT NULL,
    //       email TEXT NOT NULL UNIQUE
    //     )
    //   ''');
  }
}
