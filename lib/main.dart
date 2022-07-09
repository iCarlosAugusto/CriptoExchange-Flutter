import 'package:cripto_exchange/pages/coin_details.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (contenxt) => const HomePage(),
        "/coinDetails": (contenxt) => CoinDetails()
      },
    );
  }
}
