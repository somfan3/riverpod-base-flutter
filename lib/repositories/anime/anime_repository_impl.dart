part of 'anime_repository.dart';

class AnimeRepositoryImpl extends AnimeRepository {
  final AnimeService _api;

  AnimeRepositoryImpl(this._api);

  @override
  Future<PaginationData<List<Anime>>> getListAnime() async {
    final body = await _api.fetchListAnime();
    final listAnime =
        List<Anime>.from(body['data'].map((e) => Anime.fromJson(e)));
    final pagination = Pagination.fromJson(body['pagination']);
    return PaginationData<List<Anime>>(pagination: pagination, data: listAnime);
  }
}

final animeRepositoryProvider = Provider((ref) {
  final animeApi = ref.watch(animeServiceProvider);

  return AnimeRepositoryImpl(animeApi);
});
