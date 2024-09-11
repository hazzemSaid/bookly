part of 'fetch_newest_books_cubit.dart';

abstract class FetchNewestBooksState extends Equatable {
  const FetchNewestBooksState();

  @override
  List<Object> get props => [];
}

class FetchNewestBooksInitial extends FetchNewestBooksState {}

class FetchNewestBooksSuccess extends FetchNewestBooksState {
  final List<BookModel> books;
  const FetchNewestBooksSuccess(this.books);
}

class FetchNewestBooksFailure extends FetchNewestBooksState {
  final String message;
  const FetchNewestBooksFailure(this.message);
}

class FetchNewestBooksLoading extends FetchNewestBooksState {}
