import 'package:flutter/material.dart';

class CoinDetailsParams {
  final String name;
  final String value;
  final String image;

  CoinDetailsParams({required this.name, required this.value, required this.image});
}

class CoinDetails extends StatelessWidget {
  const CoinDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as CoinDetailsParams;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: Column(children: [
        Image.asset(arguments.image, width: 50),
        Text(arguments.name),
        Text(arguments.value),
      ]),
    );
  }
}
