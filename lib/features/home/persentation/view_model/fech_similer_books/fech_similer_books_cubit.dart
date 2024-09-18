import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/reops/home_repo_impl.dart';
import 'package:equatable/equatable.dart';

part 'fech_similer_books_state.dart';

class FechSimilerBooksCubit extends Cubit<FechSimilerBooksState> {
  final HomeRepoImpl home;

  FechSimilerBooksCubit(this.home) : super(FechSimilerBooksInitial());

  Future<void> similer_books(
      {required String category, required String id}) async {
    print(category);
    try {
      var response = await home.GetSimilerBooks(category: category, id: id);
      response.fold(
        (failure) => emit(FechSimilerBooksFailure(failure.message)),
        (books) => emit(FechSimilerBooksSuccess(books)),
      );
    } catch (e) {
      emit(const FechSimilerBooksFailure("Something went wrong"));
    }
  }
}
