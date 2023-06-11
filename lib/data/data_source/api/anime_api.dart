import 'package:anime_wiki/app/configs/api_config.dart';
import 'package:anime_wiki/data/data_source/client/client.dart';
import 'package:dio/dio.dart';

class AnimeApi {
  final AppApiClient _client;

  AnimeApi(this._client);

  Future fetchListAnime() async {
    try {
      final res = await _client.get(ApiConfig.anime);
      return res.data;
    } on DioException {
      rethrow;
    }
  }
}
