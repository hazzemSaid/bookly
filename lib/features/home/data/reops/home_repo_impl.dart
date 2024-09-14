import 'package:bookly_app/core/util/api_servise.dart';
import 'package:bookly_app/core/util/errors/faliuers.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/reops/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  ApiServise apiServise;
  HomeRepoImpl(this.apiServise);
  @override
  Future<Either<Failures, List<BookModel>>> GetNewestBooksList() async {
    print("HomeRepoImpl start");
    try {
      print("HomeRepoImpl try");

      var response =
          await apiServise.get('volumes?q=enginner&filter=free-ebooks');
      List<BookModel> books = [];
      for (var item in response['items']) {
        books.add(BookModel.fromJson(item));
      }
      print("HomeRepoImpl try");
      return Right(books);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailures.fromDioException(e));
      }
      return Left(ServerFailures(message: 'Something went wrong'));
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> GetFeaturedBooks() async {
    print("HomeRepoImpl start");

    try {
      print("HomeRepoImpl try");
      var response = await apiServise.get('volumes?q=art&filter=free-ebooks');

      print("HomeRepoImpl try");
      List<BookModel> books = [];
      for (var item in response['items']) {
        books.add(BookModel.fromJson(item));
      }
      print("books");
      return Right(books);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailures.fromDioException(e));
      }
      print("fail");
      return Left(ServerFailures(message: 'Something went wrong'));
    }
  }
}
