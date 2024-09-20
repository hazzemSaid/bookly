import 'package:bookly_app/core/util/api_servise.dart';
import 'package:bookly_app/features/home/data/reops/home_repo_impl.dart';
import 'package:bookly_app/features/search/data/search_repo_imp.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final get = GetIt.instance;

void setup() {
  get.registerSingleton<ApiServise>(
    ApiServise(Dio()),
  );
  get.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(get<ApiServise>()),
  );
  get.registerSingleton(
    SearchRepoImp(
      apiServise: get<ApiServise>(),
    ),
  );
}
