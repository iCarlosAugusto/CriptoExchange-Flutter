import 'package:mobx/mobx.dart';
import '../models/coin.dart';
part 'favorites_repository.g.dart';

class FavoritesRepository = _FavoritesRepositoryBase with _$FavoritesRepository;

abstract class _FavoritesRepositoryBase with Store {
  
  @observable
  ObservableList<Coin> favoritesCoinList = ObservableList<Coin>();

  @action
  void addFavoriteCoin(List<Coin> coins) {
    coins.forEach((coin) {
      if (!favoritesCoinList.contains(coin)) {
        favoritesCoinList.add(coin);
      }
    });
  }
}