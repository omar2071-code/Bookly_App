import 'package:bookly/Feature/home/data/repo/home_repo_impl.dart';
import 'package:bookly/core/utils/api_server.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServicesLocator() {
  getIt.registerSingleton<ApiServer>(ApiServer(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<ApiServer>()));
}
