part of 'anime_repository.dart';

class AnimeRepositoryImpl extends AnimeRepository {
  final AnimeService _api;

  AnimeRepositoryImpl(this._api);

  @override
  Future<ApiResult<PaginationData<List<Anime>>>> getListAnime() async {
    var result = ApiResult<PaginationData<List<Anime>>>(
        data: PaginationData<List<Anime>>.none(), state: ApiState.none);
    try {
      final res = await _api.fetchListAnime();
      final listAnime =
          List<Anime>.from(res['data'].map((e) => Anime.fromJson(e)));
      final pagination = Pagination.fromJson(res['pagination']);
      final data =
          PaginationData<List<Anime>>(pagination: pagination, data: listAnime);
      result = result.copyWidth(data: data, state: ApiState.success);
    } on DioException catch (e) {
      final dioException = CustomDioException.fromDioException(e);
      result = result.copyWidth(
          state: ApiState.error, message: dioException.message);
    }
    return result;
  }
}

final animeRepositoryProvider =
    Provider((ref) => AnimeRepositoryImpl(ref.watch(animeServiceProvider)));
