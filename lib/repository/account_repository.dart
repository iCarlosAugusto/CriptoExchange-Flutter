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

    //Verify if the coin already exists in the Wallet table.
    var coinAlreadyExists = await db.query("wallet", where: 'name = ?', whereArgs: [coin.name]);

    //If coinAlreadyExists... add into table wallet
    if (coinAlreadyExists.isEmpty) {
      await db.insert("wallet", {"name": coin.name, "amount": amount});
      return;
    }

    //If not, some the amount value;
    var currentAmountOfCoins = double.parse(coinAlreadyExists.first['amount'].toString());
    await db.update("wallet", {"amount": (amount + currentAmountOfCoins).toString()}, where: 'name = ?', whereArgs: [coin.name]);
  }
}
