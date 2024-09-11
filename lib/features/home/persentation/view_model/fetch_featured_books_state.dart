part of 'fetch_featured_books_cubit.dart';

abstract class FetchFeaturedBooksState extends Equatable {
  const FetchFeaturedBooksState();

  @override
  List<Object> get props => [];
}

class FetchFeaturedBooksInitial extends FetchFeaturedBooksState {}

class FetchFeaturedBooksSccuess extends FetchFeaturedBooksState {
  final List<BookModel> books;
  const FetchFeaturedBooksSccuess(this.books);
}

class FetchFeaturedBooksLaoding extends FetchFeaturedBooksState {}

class FetchFeaturedBooksFailure extends FetchFeaturedBooksState {
  final String message;
  const FetchFeaturedBooksFailure(this.message);
}
