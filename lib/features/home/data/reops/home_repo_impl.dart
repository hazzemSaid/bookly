import 'package:bookly_app/core/util/api_servise.dart';
import 'package:bookly_app/core/util/errors/faliuers.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/reops/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  ApiServise apiServise;
  HomeRepoImpl(this.apiServise);
  @override
  Future<Either<Failures, List<BookModel>>> FetchNewestBooks() async {
    try {
      var response = await apiServise
          .get('volumes?q=subject:programming&filter=free-ebooks');
      List<BookModel> books = [];
      for (var item in response['items']) {
        books.add(BookModel.fromJson(item));
      }
      return Right(books);
    } catch (e) {
      return Left(ServerFailures());
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> FetchFeaturedBooks() {
    // TODO: implement Fetchfeaturebook
    throw UnimplementedError();
  }
}
