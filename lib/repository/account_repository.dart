import 'package:cripto_exchange/models/wallet.dart';
import 'package:mobx/mobx.dart';

import '../models/coin.dart';
part 'account_repository.g.dart';

class AccountRepository = _AccountRepositoryBase with _$AccountRepository;

abstract class _AccountRepositoryBase with Store {
  @observable
  int balance = 0;

  @observable
  ObservableList<Wallet> wallet = ObservableList<Wallet>();

  void buyCripto(Coin coin, int amount) {
  
  }
  
}
