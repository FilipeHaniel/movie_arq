// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:movie_arq/app/features/domain/entities/genres/genres_entity.dart';

enum MoviesStatus { initial, loading, success, error }

class HomeState extends Equatable {
  final MoviesStatus status;
  final List<GenresEntity> genres;

  const HomeState({required this.status, required this.genres});

  const HomeState.initial()
      : status = MoviesStatus.initial,
        genres = const [];

  @override
  List<Object?> get props => throw UnimplementedError();

  HomeState copyWith({
    MoviesStatus? status,
    List<GenresEntity>? genres,
  }) {
    return HomeState(
      status: status ?? this.status,
      genres: genres ?? this.genres,
    );
  }
}
