import 'package:bloc/bloc.dart';
import 'package:bookly_app/core/util/errors/faliuers.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/reops/home_repo_impl.dart';
import 'package:dio/dio.dart';

part 'fetch_featured_books_state.dart';

class FetchFeaturedBooksCubit extends Cubit<FetchFeaturedBooksState> {
  final HomeRepoImpl homeRepo;

  FetchFeaturedBooksCubit(this.homeRepo) : super(FetchFeaturedBooksInitial());

  Future<void> FetchFeaturedBooks() async {
    print("Start");
    emit(FetchFeaturedBooksLaoding());

    try {
      print("try");
      final response = await homeRepo.GetFeaturedBooks();
      response.fold(
        (failure) => emit(FetchFeaturedBooksFailure(failure.message)),
        (books) => emit(FetchFeaturedBooksSccuess(books)),
      );
      print(response.isLeft());
    } on Exception catch (e) {
      if (e is DioException) {
        emit(FetchFeaturedBooksFailure(
            ServerFailures.fromDioException(e).message));
      }
      emit(const FetchFeaturedBooksFailure('Something went wrong'));
    }
  }
}
