import 'package:cripto_exchange/repository/favorites_repository.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Favorites extends StatelessWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FavoritesRepository favoritesRepository =
        Provider.of<FavoritesRepository>(context);

    return Scaffold(
      appBar: AppBar(title: const Text("Favorites criptos")),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Text(favoritesRepository.favoritesCoinList[index].name);
          },
          separatorBuilder: (_, __) => const Divider(),
          itemCount: favoritesRepository.favoritesCoinList.length),
      floatingActionButton: FloatingActionButton(
        child: Text("Teste"),
        onPressed: () {
          print(favoritesRepository.favoritesCoinList);
        },
      ),
    );
  }
}
