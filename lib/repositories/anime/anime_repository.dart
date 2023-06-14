import 'package:anime_wiki/app/exceptions/dio_exception.dart';
import 'package:anime_wiki/models/models.dart';
import 'package:anime_wiki/services/anime/anime_services.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'anime_repository_impl.dart';

abstract class AnimeRepository {
  Future<ApiResult<PaginationData<List<Anime>>>> getListAnime();
}
