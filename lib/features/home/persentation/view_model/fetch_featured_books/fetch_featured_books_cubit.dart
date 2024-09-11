import 'package:bloc/bloc.dart';
import 'package:bookly_app/core/util/errors/faliuers.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/reops/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

part 'fetch_featured_books_state.dart';

class FetchFeaturedBooksCubit extends Cubit<FetchFeaturedBooksState> {
  final HomeRepoImpl homeRepo;

  FetchFeaturedBooksCubit(super.initialState, this.homeRepo);

  Future<void> FetchFeaturedBooks() async {
    emit(FetchFeaturedBooksLaoding());

    try {
      final response = await homeRepo.FetchFeaturedBooks();
      response.fold(
        (failure) => emit(FetchFeaturedBooksFailure(failure.message)),
        (books) => emit(FetchFeaturedBooksSccuess(books)),
      );
    } on Exception catch (e) {
      if (e is DioException) {
        emit(FetchFeaturedBooksFailure(
            ServerFailures.fromDioException(e).message));
      }
      emit(const FetchFeaturedBooksFailure('Something went wrong'));
    }
  }
}
