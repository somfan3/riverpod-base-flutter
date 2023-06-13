import 'dart:async';

import 'package:anime_wiki/models/models.dart';
import 'package:anime_wiki/repositories/anime/anime_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeProvider extends AsyncNotifier<PaginationData<List<Anime>>> {
  final AnimeRepository _repository;

  HomeProvider(this._repository);

  @override
  FutureOr<PaginationData<List<Anime>>> build() async {
    // state = const AsyncValue.loading();
    // state = await AsyncValue.guard(() => fetchData());
    return fetchData();
  }

  Future<PaginationData<List<Anime>>> fetchData() async {
    final data = await _repository.getListAnime();
    return data;
  }
}

final homeProvider =
    FutureProvider((ref) => HomeProvider(ref.watch(animeRepositoryProvider)));
