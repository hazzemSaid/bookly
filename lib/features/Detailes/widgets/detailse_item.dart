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
          book.volumeInfo?.title as String,
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
        Text(
          book.volumeInfo?.description ?? "No description",
          style: const TextStyle(
            color: Colors.white24,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              FontAwesomeIcons.star,
              color: Colors.yellow,
              size: 15,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "4.5",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text("2021"),
            SizedBox(
              width: 15,
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        customBottom(),
      ],
    );
  }
}
