import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:movie_arq/app/features/data/datasourses/genres/genres_datasourse.dart';
import 'package:movie_arq/app/features/domain/entities/genres/genres_entity.dart';
import 'package:movie_arq/app/features/domain/repositories/genres/genres_repository.dart';

class GenresRepositoryImpl implements GenresRepository {
  final GenresDatasourse _genresDatasourse;

  GenresRepositoryImpl({required GenresDatasourse genresDatasourse})
      : _genresDatasourse = genresDatasourse;

  @override
  Future<Either<Exception, List<GenresEntity>>> getGenresRepository() async {
    try {
      final genres = await _genresDatasourse.getGenresDataSourse();

      return Right(genres);
    } on Exception catch (e, s) {
      log('Error request genres movie', error: e, stackTrace: s);

      return Left(Exception());
    }
  }
}
