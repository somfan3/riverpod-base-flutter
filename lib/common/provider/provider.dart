import 'package:anime_wiki/app/router/app_router.dart';
import 'package:anime_wiki/common/network/client/client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final routerProvider = Provider((ref) => AppRouter().router);

final rawApiProvider = Provider((ref) => RawApiClient());

final appApiProvider = Provider((ref) => AppApiClient());
