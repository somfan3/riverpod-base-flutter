part of 'anime_services.dart';

class AnimeServiceImpl extends AnimeService {
  final AppApiClient _client;

  AnimeServiceImpl(this._client);

  @override
  Future fetchListAnime() async {
    try {
      final res = await _client.get(ApiConfig.anime);
      return res.data;
    } on DioException {
      rethrow;
    }
  }
}

final animeServiceProvider =
    Provider((ref) => AnimeServiceImpl(ref.watch(appApiProvider)));
