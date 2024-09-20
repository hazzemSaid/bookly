import 'dart:math';

import 'package:bookly_app/features/Detailes/widgets/custom_Notavalible.dart';
import 'package:bookly_app/features/Detailes/widgets/custom_bottom.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class detailseItem extends StatelessWidget {
  final BookModel book;
  const detailseItem({super.key, required this.book});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          book.volumeInfo?.title?.substring(
                0,
                min(book.volumeInfo?.title?.length ?? 0, 10),
              ) ??
              "No title",
          style: const TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          width: double.infinity,
          height: 10,
        ),
        Opacity(
          opacity: 0.5,
          child: Text(
            book.volumeInfo?.description ?? "",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              FontAwesomeIcons.star,
              color: Colors.yellow,
              size: 15,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              (book.saleInfo?.country).toString() ?? "No country",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              (book.saleInfo?.saleability).toString() ?? "No price",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        book.volumeInfo?.previewLink != null
            ? customBottom(book: book)
            : const custom_Notavailable_buttom()
      ],
    );
  }
}
