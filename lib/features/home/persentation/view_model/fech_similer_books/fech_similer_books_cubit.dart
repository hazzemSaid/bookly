import 'package:bloc/bloc.dart';
import 'package:bookly_app/core/util/errors/faliuers.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/reops/home_repo_impl.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

part 'fech_similer_books_state.dart';

class FechSimilerBooksCubit extends Cubit<FechSimilerBooksState> {
  FechSimilerBooksCubit(super.initialState, this.home);
  final HomeRepoImpl home;
  Future<dynamic> similer_books() async {
    try {
      var response = home.GetSimilerBooks(category: "programming");
      response.fold(
        (failure) => emit(FechSimilerBooksFailure(failure.message)),
        (books) => emit(FechSimilerBooksSuccess(books)),
      );
    } catch (e) {
      emit(const FechSimilerBooksFailure("Something went wrong"));
    }
  }
}

extension on Future<Either<Failures, List<BookModel>>> {
  void fold(void Function(dynamic failure) param0,
      void Function(dynamic books) param1) {}
}
