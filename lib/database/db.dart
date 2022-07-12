import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';


class DB {
  DB._();

  static final instance = DB._();

  static Database? _database;

  get database async {
    if (_database != null) {
      print("Data base não é null");
      return _database;
    }

    return await _initDatabase();
  }

  _initDatabase() async {
    return await openDatabase(
      join(await getDatabasesPath(), 'cripto.db'),
      version: 1,
      onCreate: _onCreate,
    );
  }

  _onCreate(Database db, int version) async {
    await db.execute(_conta);
    await db.execute(_wallet);
    await db.execute(_historico);
    await db.insert('conta', {'saldo': 0});
  }
  
    String get _conta => '''
    CREATE TABLE conta (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      saldo REAL
    );
  ''';

  String get _wallet => '''
    CREATE TABLE carteira (
      name TEXT PRIMARY KEY,
      amount TEXT
    );
  ''';

  String get _historico => '''
    CREATE TABLE historico (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      data_operacao INT,
      tipo_operacao TEXT,
      moeda TEXT,
      sigla TEXT,
      valor REAL,
      quantidade TEXT
    );
  ''';
}
