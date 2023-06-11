import 'package:anime_wiki/data/data_source/api/anime_api.dart';
import 'package:anime_wiki/data/data_source/api_client_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final animeApiProvider = Provider((ref) {
  final apiProvider = ref.watch(appApiProvider);
  return AnimeApi(apiProvider);
});
