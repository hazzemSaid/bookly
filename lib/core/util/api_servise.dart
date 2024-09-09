import 'package:dio/dio.dart';

class ApiServise {
  //https://www.googleapis.com/books/v1/volumes?q=programming&filter=free-ebooks
  static const String baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio dio;
  ApiServise(this.dio);
  Future<Map<String, dynamic>> get(String endpoint) async {
    var response = await dio.get('$baseUrl$endpoint');
    return response.data;
  }
}
