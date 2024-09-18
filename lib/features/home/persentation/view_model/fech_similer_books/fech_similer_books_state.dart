part of 'fech_similer_books_cubit.dart';

abstract class FechSimilerBooksState extends Equatable {
  const FechSimilerBooksState();

  @override
  List<Object> get props => [];
}

class FechSimilerBooksInitial extends FechSimilerBooksState {}

class FechSimilerBooksSuccess extends FechSimilerBooksState {
  final List<BookModel> books;
  const FechSimilerBooksSuccess(this.books);
}

class FechSimilerBooksFailure extends FechSimilerBooksState {
  final String message;
  const FechSimilerBooksFailure(this.message);
}

class FechSimilerBooksLoading extends FechSimilerBooksState {}
