import 'package:bookly_app/core/util/errors/faliuers.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/reops/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Either<Failures, List<BookModel>> FetchBestSellerbook() {
    // TODO: implement FetchBestSellerbook
    throw UnimplementedError();
  }

  @override
  Either<Failures, List<BookModel>> Fetchfeaturebook() {
    // TODO: implement Fetchfeaturebook
    throw UnimplementedError();
  }
}
