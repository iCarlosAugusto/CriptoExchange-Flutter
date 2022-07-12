import 'package:cripto_exchange/pages/coin_details.dart';
import 'package:cripto_exchange/pages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './repository/favorites_repository.dart';

void main() {
  
  runApp(
    MultiProvider(providers: [
      Provider<FavoritesRepository>(create: (context) => FavoritesRepository())
    ], 
    child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (contenxt) => MainPage(),
        "/coinDetails": (contenxt) => CoinDetails()
      },
    );
  }
}
