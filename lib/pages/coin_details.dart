import 'package:cripto_exchange/database/db.dart';
import 'package:cripto_exchange/repository/account_repository.dart';
import 'package:flutter/material.dart';
import '../models/coin.dart';
import 'package:sqflite/sqflite.dart';

class CoinDetailsParams {
  final String name;
  final String value;
  final String image;
  final Coin coin;

  CoinDetailsParams(
      {required this.name,
      required this.value,
      required this.image,
      required this.coin});
}

class CoinDetails extends StatefulWidget {
  @override
  State<CoinDetails> createState() => _CoinDetailsState();
}

class _CoinDetailsState extends State<CoinDetails> {
  final formKey = GlobalKey<FormState>();

  AccountRepository accountRepository = AccountRepository();

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
          key: formKey,
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
                              "How much ${arguments.name} would you like?"),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Type some value here";
                        }
                        return null;
                      },
                    )
                  ],
                )),
            ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    accountRepository.buyCripto(arguments.coin, 10);
                    //Navigator.pop(context);
                    //ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    //    content: Text("Compra realizada com sucesso!"),
                    //    backgroundColor: Colors.green));
                  }
                },
                child: const Text("Buy now"),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.green.shade500)))
          ])),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Database db = await DB.instance.database;
          var result = db.query("wallet");

        },
        child: const Text("Teste"),
      ),
    );
  }
}
