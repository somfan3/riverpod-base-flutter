import 'package:anime_wiki/app/configs/api_config.dart';
import 'package:anime_wiki/common/network/client/app_api_client.dart';
import 'package:anime_wiki/common/provider/provider.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'anime_service_impl.dart';

abstract class AnimeService {
  Future fetchListAnime();
}
