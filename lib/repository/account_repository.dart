import 'package:cripto_exchange/models/wallet.dart';
import 'package:mobx/mobx.dart';
import 'package:sqflite/sqflite.dart';
import '../database/db.dart';
import '../models/coin.dart';
part 'account_repository.g.dart';

class AccountRepository = _AccountRepositoryBase with _$AccountRepository;

abstract class _AccountRepositoryBase with Store {
  late Database db;

  @observable
  int balance = 0;

  @observable
  ObservableList<Wallet> wallet = ObservableList<Wallet>();

  void buyCripto(Coin coin, int amount) async {
    db = await DB.instance.database;
    await db.insert("wallet", {
      "name": coin.name,
      "amount": amount
    });
  }
}
