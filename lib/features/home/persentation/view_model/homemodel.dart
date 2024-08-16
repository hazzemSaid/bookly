import 'package:bookly_app/features/home/persentation/view/widget/bestselleritem.dart';
import 'package:bookly_app/features/home/persentation/view/widget/carditem.dart';
import 'package:bookly_app/features/home/persentation/view/widget/customappbar.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppbar(),
            Carditem(),
            Container(
              padding: const EdgeInsets.only(left: 25, bottom: 20),
              width: double.infinity,
              child: const Text(
                textAlign: TextAlign.start,
                "Best Seller",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            bestSelleritems(),
          ],
        ),
      ),
    );
  }
}
