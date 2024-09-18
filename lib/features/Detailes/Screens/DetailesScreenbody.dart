import 'package:bookly_app/features/Detailes/widgets/custom_Detailes_Appbar.dart';
import 'package:bookly_app/features/Detailes/widgets/detailse_item.dart';
import 'package:bookly_app/features/Detailes/widgets/view_ItemsSection.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:flutter/material.dart';

import '../widgets/photo_for_detailes_item.dart';

class Detailesscreenbody extends StatelessWidget {
  final BookModel book;
  const Detailesscreenbody({super.key, required this.book});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: customDetailesAppbar(),
          ),
          const SizedBox(
            width: double.infinity,
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 60.0,
            ),
            child: photoforidetailestem(
              imageUrl: book.volumeInfo?.imageLinks?.thumbnail as String,
            ),
          ),
          const detailseItem(),
          const SizedBox(
            height: 15,
            width: double.infinity,
          ),
          const Text('You can also like'),
          const SizedBox(
            height: 15,
            width: double.infinity,
          ),
          const viewitemsSection(),
        ],
      ),
    ));
  }
}
