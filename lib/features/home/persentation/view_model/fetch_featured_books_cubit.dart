import 'package:bloc/bloc.dart';
import 'package:bookly_app/core/util/api_servise.dart';
import 'package:bookly_app/core/util/errors/faliuers.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/reops/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

part 'fetch_featured_books_state.dart';

class FetchFeaturedBooksCubit extends Cubit<FetchFeaturedBooksState> {
  final Dio dio;
  final ApiServise apiServise;
  final HomeRepoImpl homeRepo;

  FetchFeaturedBooksCubit()
      : dio = Dio(),
        apiServise = ApiServise(Dio()),
        homeRepo = HomeRepoImpl(ApiServise(Dio())),
        super(FetchFeaturedBooksInitial());

  FetchFeaturedBooks() async {
    emit(FetchFeaturedBooksLaoding());

    try {
      final response = await homeRepo.FetchFeaturedBooks();
      response.fold(
        (l) => emit(FetchFeaturedBooksFailure(l.message)),
        (r) => emit(FetchFeaturedBooksSccuess(r)),
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
