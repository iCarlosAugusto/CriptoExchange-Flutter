import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CoinDetails extends StatelessWidget {
  const CoinDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return const Scaffold(
      body: Center(child: Text("Here is the Coin Details!")),
   );
  }
}