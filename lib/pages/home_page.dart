import 'package:cripto_exchange/models/coin.dart';
import 'package:flutter/material.dart';
import '../repository/coinRepository.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final table = CoinRepository.table;
  List<Coin> selectedCoin = [];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page")),
      body: ListView.separated(
          itemBuilder: (BuildContext content, int index) {
            return ListTile(
              title: Text(table[index].name),
              leading: IconButton(
                  icon: selectedCoin.contains(table[index])
                  ? const CircleAvatar(child: Icon(Icons.check))
                  : SizedBox(child: Image.asset(table[index].image),) ,
                  onPressed: () {
                    setState(() {
                      if (selectedCoin.contains(table[index])) {
                        selectedCoin.remove(table[index]);
                      } else {
                        selectedCoin.add(table[index]);
                      }
                    });
                  }),
              trailing: Text(table[index].value),
              selected: selectedCoin.contains(table[index]),
              onTap: () {
                
              },
            );
          },
          separatorBuilder: (_, __) => const Divider(),
          itemCount: table.length),
    );
  }
}
