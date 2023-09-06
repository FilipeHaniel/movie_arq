import 'package:movie_arq/app/features/domain/entities/genres/genres_entity.dart';
import 'package:dartz/dartz.dart';

abstract interface class GenresRepository {
  Future<Either<Exception, List<GenresEntity>>> getGenresRepository();
}
