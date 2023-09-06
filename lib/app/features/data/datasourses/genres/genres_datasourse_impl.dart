import 'dart:developer';

import 'package:movie_arq/app/features/data/datasourses/genres/genres_datasourse.dart';
import 'package:movie_arq/app/features/data/mappers/genres/genres_mapper.dart';
import 'package:movie_arq/app/shared/constants/endpoints.dart';
import 'package:movie_arq/app/shared/constants/http_methods.dart';
import 'package:movie_arq/app/shared/network/base_rest_movies.dart';

class GenresDatasourseImpl implements GenresDatasourse {
  final BaseRestMovies _request;

  GenresDatasourseImpl({required BaseRestMovies request}) : _request = request;

  @override
  Future<List<GenresMapper>> getGenresDataSourse() async {
    try {
      final result = await _request.movieRequest(
        url: MoviesEndpoints.genres,
        method: HttpMethods.get,
      );

      final genres = result['genres']
          .map<GenresMapper>((map) => GenresMapper.fromMap(map))
          .toList() as List<GenresMapper>;

      return genres;
    } on Exception catch (e, s) {
      log('Error request genres movie', error: e, stackTrace: s);

      throw Error();
    }
  }
}
