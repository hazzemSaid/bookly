import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: CachedNetworkImage(
              height: 200,
              width: 150,
              fit: BoxFit.cover,
              errorWidget: (context, url, error) => const Icon(Icons.error),
              imageUrl: book.volumeInfo?.imageLinks?.thumbnail as String),
        ),
      ),
    );
  }
}
