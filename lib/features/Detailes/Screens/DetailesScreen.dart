// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bookly_app/features/Detailes/Screens/DetailesScreenbody.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:flutter/material.dart';

class Detailesscreen extends StatelessWidget {
  @override
  final BookModel book;
  const Detailesscreen({super.key, required this.book});
  Widget build(BuildContext context) {
    return Scaffold(
      body: Detailesscreenbody(
        book: book,
      ),
    );
  }
}
