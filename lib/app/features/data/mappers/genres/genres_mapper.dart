import 'package:movie_arq/app/features/domain/entities/genres/genres_entity.dart';

class GenresMapper extends GenresEntity {
  GenresMapper({required super.id, required super.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    };
  }

  factory GenresMapper.fromMap(Map<String, dynamic> map) {
    return GenresMapper(
      id: map['id'] ?? 0,
      name: map['name'] ?? '',
    );
  }
}
