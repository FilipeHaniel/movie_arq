import 'package:movie_arq/app/modules/home/contract/home_page_contract.dart';
import 'package:movie_arq/app/modules/home/home_page.dart';
import 'package:movie_arq/app/modules/home/state/home_state.dart';

class EventHandler {
  late HomePageContract _homePageContract;

  void setHomePage(HomePageContract contract) => _homePageContract = contract;

  void emit(MoviesStatus state) {
    if (state == MoviesStatus.initial) {
      _homePageContract.initial();
    }

    if (state == MoviesStatus.loading) {}

    if (state == MoviesStatus.success) {}

    if (state == MoviesStatus.error) {}
  }
}
