import 'package:anime_wiki/data/provider/client/app_api_client.dart';
import 'package:anime_wiki/data/provider/client/raw_api_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final rawApiProvider = Provider((ref) => RawApiClient());

final appApiProvider = Provider((ref) => AppApiClient());