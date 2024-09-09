import 'package:dio/dio.dart';

class ApiServise {
  //https://www.googleapis.com/books/v1/volumes?q=programming&filter=free-ebooks
  static const String _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio _dio;
  ApiServise(this._dio);
  Future<Map<String, dynamic>> get(String endpoint) async {
    var response = await _dio.get('$_baseUrl$endpoint');
    return response.data;
    //dio transformer the json to dart object as automatically
  }
}
