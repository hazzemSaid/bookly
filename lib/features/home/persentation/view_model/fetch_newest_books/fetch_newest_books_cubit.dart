import 'package:bloc/bloc.dart';
import 'package:bookly_app/core/util/errors/faliuers.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/reops/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

part 'fetch_newest_books_state.dart';

class FetchNewestBooksCubit extends Cubit<FetchNewestBooksState> {
  final HomeRepoImpl homerepo;
  FetchNewestBooksCubit(this.homerepo) : super(FetchNewestBooksInitial());
  Future<void> FetchNewestBooks() async {
    emit(FetchNewestBooksLoading());
    try {
      final response = await homerepo.GetNewestBooksList();
      response.fold(
        (failure) => emit(FetchNewestBooksFailure(failure.message)),
        (books) => emit(FetchNewestBooksSuccess(books)),
      );
    } on Exception catch (e) {
      if (e is DioException) {
        emit(
          FetchNewestBooksFailure(ServerFailures.fromDioException(e).message),
        );
      }
      emit(const FetchNewestBooksFailure('Something went wrong'));
    }
  }
}
