import 'package:bloc/bloc.dart';
import 'package:bookly_app/core/util/errors/faliuers.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/search/data/search_repo_imp.dart';
import 'package:dio/dio.dart';

part 'fetchs_sarchbook_state.dart';

class FetchsSarchbookCubit extends Cubit<FetchsSarchbookState> {
  final SearchRepoImp searchRepoImp;
  FetchsSarchbookCubit(this.searchRepoImp) : super(FetchsSarchbookInitial());

  Future<void> fetchBooks(String query) async {
    emit(FetchsSarchbookLoading());
    try {
      final result = await searchRepoImp.fetchBooks(query);
      result.fold(
        (failures) => emit(FetchsSarchbooFaliuer(failures.message)),
        (books) => emit(FetchsSarchbooSuccess(books)),
      );
    } catch (e) {
      if (e is DioException) {
        emit(FetchsSarchbooFaliuer(
            ServerFailures.fromDioException(e) as String));
      } else
        emit(FetchsSarchbooFaliuer(
            ServerFailures(message: 'Something went wrong') as String));
    }
  }
}
