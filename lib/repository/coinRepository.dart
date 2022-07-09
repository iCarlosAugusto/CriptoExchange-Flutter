import '../models/coin.dart';

class CoinRepository {
  static List<Coin> table = [
    Coin(name: "Bitcoin", value: "192943.323", image: 'images/bitcoin.png'),
    Coin(name: "Flamengo Coin", value: "1203.2", image: 'images/flamengo.png'),
    Coin(name: "Etherium", value: "12304.203", image: 'images/ethereum.png'),
  ];
}
