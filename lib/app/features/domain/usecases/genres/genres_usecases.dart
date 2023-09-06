import 'package:dartz/dartz.dart';
import 'package:movie_arq/app/features/domain/entities/genres/genres_entity.dart';
import 'package:movie_arq/app/features/domain/repositories/genres/genres_repository.dart';
import 'package:movie_arq/app/features/domain/usecases/core/usecase.dart';

class GenresUsecases extends Usecase<List<GenresEntity>, NoParameter> {
  final GenresRepository _genresRepository;

  GenresUsecases({required GenresRepository genresRepository})
      : _genresRepository = genresRepository;

  @override
  Future<Either<Exception, List<GenresEntity>>> call(
      NoParameter parameter) async {
    return await _genresRepository.getGenresRepository();
  }
}
