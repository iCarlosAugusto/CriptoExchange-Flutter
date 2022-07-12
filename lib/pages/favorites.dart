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
      body: const Center(child: Text("Favorites!")),
      floatingActionButton: FloatingActionButton(
        child: Text("Teste"),
        onPressed: () {
          print(favoritesRepository.favoritesCoinList);
        },
      ),
    );
  }
}
