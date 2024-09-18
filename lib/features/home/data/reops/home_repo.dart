import 'package:bookly_app/core/util/errors/faliuers.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failures, List<BookModel>>> GetNewestBooksList();
  Future<Either<Failures, List<BookModel>>> GetFeaturedBooks();
  Future<Either<Failures, List<BookModel>>> GetSimilerBooks(
      {required String category, required String id});
}
