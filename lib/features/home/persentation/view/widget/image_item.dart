// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:flutter/material.dart';

class item_image extends StatelessWidget {
  final BookModel book;

  item_image({required this.book});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: const MediaQueryData().size.height * 0.3,
      child: AspectRatio(
        aspectRatio: 2.3 / 4,
        //w/h
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: NetworkImage(
                book.volumeInfo!.imageLinks!.thumbnail as String,
              ),
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
      ),
    );
  }
}
