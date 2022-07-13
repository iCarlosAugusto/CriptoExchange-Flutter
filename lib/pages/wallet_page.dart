import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import '../database/db.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  late Database db;

  @override
  void initState() {
    initGraph();
    super.initState();
  }

  void initGraph() {
      
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Wallet")),
      body: Center(child: Text("Wallet")),
      floatingActionButton: FloatingActionButton(onPressed: () {
        print(db);
      }),
    );
  }
}
