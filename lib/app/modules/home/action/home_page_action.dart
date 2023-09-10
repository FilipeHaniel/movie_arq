import 'package:get_it/get_it.dart';
import 'package:movie_arq/app/features/domain/usecases/core/usecase.dart';
import 'package:movie_arq/app/features/domain/usecases/genres/genres_usecases.dart';
import 'package:movie_arq/app/modules/event_handler.dart';
import 'package:movie_arq/app/modules/home/state/home_state.dart';

class HomePageAction {
  final GenresUsecases _genresUsecases;

  HomePageAction({required GenresUsecases genresUsecases})
      : _genresUsecases = genresUsecases;

  Future<void> loadGenres() async {
    await _genresUsecases.call(NoParameter()).then((value) => value.fold(
          (l) => GetIt.I<EventHandler>().emit(MoviesStatus.error),
          (r) => GetIt.I<EventHandler>().emit(MoviesStatus.success),
        ));
  }
}
