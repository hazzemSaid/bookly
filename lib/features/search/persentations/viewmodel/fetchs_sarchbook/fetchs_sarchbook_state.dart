part of 'fetchs_sarchbook_cubit.dart';

abstract class FetchsSarchbookState {}

class FetchsSarchbookInitial extends FetchsSarchbookState {}

class FetchsSarchbookLoading extends FetchsSarchbookState {}

class FetchsSarchbooSuccess extends FetchsSarchbookState {
  final List<BookModel> books;
  FetchsSarchbooSuccess(this.books);
}

class FetchsSarchbooFaliuer extends FetchsSarchbookState {
  final String message;
  FetchsSarchbooFaliuer(this.message);
}
