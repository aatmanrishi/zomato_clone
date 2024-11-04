import 'package:flutter/material.dart';
import 'package:zomator_clone/Components/GiftCardsSection.dart';
import 'package:zomator_clone/Components/WalletSection.dart';
import 'package:zomator_clone/Components/WalletTopSection.dart';
import 'package:zomator_clone/Components/ZomatorMoneyCard.dart';

class Wallet extends StatelessWidget {
  const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.indigo[50],
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      // color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            //Top Container
            WalletTopSection(),
            //  Zomator Money Crd
            SizedBox(height: 22),
            ZomatoMoneyCard(),
            WalletSection(),
            GiftCardSection()
          ],
        ),
      ),
    );
  }
}
