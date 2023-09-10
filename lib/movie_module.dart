import 'package:get_it/get_it.dart';
import 'package:movie_arq/app/features/data/datasourses/genres/genres_datasourse.dart';
import 'package:movie_arq/app/features/data/datasourses/genres/genres_datasourse_impl.dart';
import 'package:movie_arq/app/features/data/repositories/genres/genres_repository_impl.dart';
import 'package:movie_arq/app/features/domain/repositories/genres/genres_repository.dart';
import 'package:movie_arq/app/shared/network/base_rest_movies.dart';

GetIt appModule = GetIt.instance;

Future<void> setupAppModule() async {
  appModule.registerLazySingleton(() => BaseRestMovies());

  appModule.registerLazySingleton<GenresDatasourse>(
      () => GenresDatasourseImpl(request: appModule()));

  appModule.registerLazySingleton<GenresRepository>(
      () => GenresRepositoryImpl(genresDatasourse: appModule()));

  appModule.registerLazySingleton<GenresDatasourse>(
      () => GenresDatasourseImpl(request: appModule()));
}
