import '../database/sql_database.dart';
import '../tables/sql_user_model.dart';
import 'package:sqflite/sqflite.dart';

class UserDao {
  static final String _tableName = 'users';
  Future<Database> get _db async => await SqlDatabase.db;

  // CRUD operations for the users table can be added here

  Future<int> insertUser(SqlUserModel user) async {
    final dbClient = await _db;
    return await dbClient.insert(_tableName, user.toJson());
  }

  Future<List<SqlUserModel>> getAllUsers() async {
    final dbClient = await _db;
    final List<Map<String, dynamic>> maps = await dbClient.query(_tableName);
    return maps.map((map) => SqlUserModel.fromJson(map)).toList();
  }

  Future<SqlUserModel?> getUserById(int id) async {
    final dbClient = await _db;
    final List<Map<String, dynamic>> maps = await dbClient.query(
      _tableName,
      where: 'id = ?',
      whereArgs: [id],
    );
    if (maps.isNotEmpty) {
      return SqlUserModel.fromJson(maps.first);
    }
    return null;
  }

  Future<int> updateUser(SqlUserModel user) async {
    final dbClient = await _db;
    return await dbClient.update(
      _tableName,
      user.toJson(),
      where: 'id = ?',
      whereArgs: [user.id],
    );
  }

  Future<int> deleteUserById(int id) async {
    final dbClient = await _db;
    return dbClient.delete(_tableName, where: 'id = ?', whereArgs: [id]);
  }
}
