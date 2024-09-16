import 'package:bookly_app/features/Detailes/Sections/custom_Detailes_Appbar.dart';
import 'package:bookly_app/features/Detailes/Sections/detailse_item.dart';
import 'package:bookly_app/features/Detailes/Sections/view_ItemsSection.dart';
import 'package:flutter/material.dart';

import 'Sections/photo_for_detailes_item.dart';

class Detailesscreenbody extends StatelessWidget {
  const Detailesscreenbody({super.key});
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: customDetailesAppbar(),
            ),
            SizedBox(
              width: double.infinity,
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 60.0,
              ),
              child: photoforidetailestem(
                  //image for product
                  ),
            ),
            detailseItem(),
            SizedBox(
              height: 15,
              width: double.infinity,
            ),
            Text('You can also like'),
            SizedBox(
              height: 15,
              width: double.infinity,
            ),
            viewitemsSection(),
          ],
        ),
      ),
    );
  }
}
