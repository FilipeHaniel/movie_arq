import 'package:movie_arq/app/features/data/mappers/genres/genres_mapper.dart';

abstract interface class GenresDatasourse {
  Future<List<GenresMapper>> getGenresDataSourse();
}
