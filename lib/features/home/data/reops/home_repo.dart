import 'package:bookly_app/core/util/errors/faliuers.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Either<Failures, List<BookModel>> FetchBestSellerbook();
  Either<Failures, List<BookModel>> Fetchfeaturebook();
}
