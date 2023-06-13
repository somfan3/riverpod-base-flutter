import 'package:anime_wiki/app/configs/api_config.dart';
import 'package:anime_wiki/common/network/client/base/base_api_client.dart';

class AppApiClient extends BaseApiClient {
  AppApiClient() : super(baseUrl: ApiConfig.baseUrl);
}
