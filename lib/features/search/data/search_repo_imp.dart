// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bookly_app/core/util/api_servise.dart';
import 'package:bookly_app/core/util/errors/faliuers.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/search/data/search_repo.dart';
import 'package:dartz/dartz.dart';

class SearchRepoImp implements SearchRepo {
  @override
  ApiServise apiServise;
  SearchRepoImp({
    required this.apiServise,
  });
  @override
  Future<Either<Failures, List<BookModel>>> fetchBooks(String query) async {
    try {
      var response = await apiServise.get('volumes?q=$query');
      List<BookModel> books = [];
      for (var item in response['items']) {
        books.add(BookModel.fromJson(item));
      }
      return Right(books);
    } catch (e) {
      return Left(ServerFailures(message: 'Something went wrong'));
    }
  }
}
