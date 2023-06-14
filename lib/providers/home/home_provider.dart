import 'dart:async';

import 'package:anime_wiki/models/models.dart';
import 'package:anime_wiki/repositories/anime/anime_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'home_state.dart';

class HomeProvider extends StateNotifier<HomeState> {
  final AnimeRepository _repository;

  HomeProvider(this._repository) : super(HomeState()) {
    getListManga();
  }

  Future<void> getListManga() async {
    state = state.copyWith(
        listAnimeResult:
            state.listAnimeResult.copyWidth(state: ApiState.loading));
    final result = await _repository.getListAnime();
    state = state.copyWith(listAnimeResult: result);
  }
}

final homeProvider = StateNotifierProvider<HomeProvider, HomeState>(
    (ref) => HomeProvider(ref.watch(animeRepositoryProvider)));
