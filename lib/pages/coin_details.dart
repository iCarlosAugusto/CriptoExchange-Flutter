import 'package:flutter/material.dart';

class CoinDetailsParams {
  final String name;
  final String value;
  final String image;

  CoinDetailsParams(
      {required this.name, required this.value, required this.image});
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
          title: const Text("Buy Cripto!"),
      ),
      body: Form(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Image.asset(
              arguments.image,
              width: 50,
            )),
          Text("Price: ${arguments.value}"),
          Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                      labelText:
                        "How much ${arguments.name} would you like?"))
                ],
            )
          ),
          ElevatedButton(
            onPressed: () {
              print("Validando...");
            },
            child: const Text("Buy now"),
            style: ButtonStyle(
              backgroundColor:
                MaterialStateProperty.all(Colors.green.shade500)))
        ])
      )
    );
  }
}
