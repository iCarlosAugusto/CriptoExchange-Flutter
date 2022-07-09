import 'package:cripto_exchange/models/coin.dart';
import 'package:flutter/material.dart';
import '../repository/coinRepository.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    final table = CoinRepository.table;

    return Scaffold(
      appBar: AppBar(title: const Text("Home Page")),
      body: ListView.separated(
          itemBuilder: (BuildContext content, int index) {
            return  ListTile(
              title: Text(table[index].name),
              leading: Image.asset(table[index].image, width: 40),
              trailing: Text(table[index].value),
            );
          },
          separatorBuilder: (_, __) => const Divider(),
          itemCount: table.length),
    );
  }
}
