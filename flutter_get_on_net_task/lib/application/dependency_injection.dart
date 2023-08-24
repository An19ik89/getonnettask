import 'package:flutter_get_on_net_task/application/app_preferences.dart';
import 'package:flutter_get_on_net_task/data/data_source/remote_data_source.dart';
import 'package:flutter_get_on_net_task/data/network/app_api.dart';
import 'package:flutter_get_on_net_task/data/network/dio_factory.dart';
import 'package:flutter_get_on_net_task/data/repository/repository_impl.dart';
import 'package:flutter_get_on_net_task/domain/repository/repository.dart';
import 'package:flutter_get_on_net_task/domain/usecase/genres_usecase.dart';
import 'package:flutter_get_on_net_task/domain/usecase/login_usecase.dart';
import 'package:flutter_get_on_net_task/domain/usecase/movielist_usecase.dart';

import 'package:flutter_get_on_net_task/presentation/ui/movie/movie_list_viewmodel.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';


final instance = GetIt.instance;

Future<void> initAppModule() async {
  final sharedPrefs = await SharedPreferences.getInstance();

  //shared prefs instance
  instance.registerLazySingleton<SharedPreferences>(() => sharedPrefs);

  //app pref instance
  instance.registerLazySingleton<AppPreferences>(() => AppPreferences(instance()));

  //dio factory instance
  instance.registerLazySingleton<DioFactory>(() => DioFactory(instance()));

  //app service client
  final dio = await instance<DioFactory>().getDio();
  instance.registerLazySingleton<AppServiceClient>(() => AppServiceClient(dio));

  //remote data source
  instance.registerLazySingleton<RemoteDataSource>(
          () => RemoteDataSourceImplementer(instance()));

  //repository
  instance.registerLazySingleton<Repository>(() => RepositoryImpl(instance()));

}

initLoginModule() {
  // if (!GetIt.I.isRegistered<LoginUseCase>()) {
  //   instance.registerFactory<LoginUseCase>(() => LoginUseCase(instance()));
  //   instance.registerFactory<LoginViewModel>(() => LoginViewModel(instance()));
  // }
}

initMovieListModule() {
  if (!GetIt.I.isRegistered<LoginUseCase>()) {
    instance.registerFactory<MovieListUseCase>(() => MovieListUseCase(instance()));
    instance.registerFactory<GenresListUseCase>(() => GenresListUseCase(instance()));
    instance.registerFactory<MovieListViewModel>(() => MovieListViewModel(instance(),instance()));
  }
}