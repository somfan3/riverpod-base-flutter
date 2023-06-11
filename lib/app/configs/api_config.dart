class ApiConfig {
  static const String baseUrl = "https://api.jikan.moe/v4";
  static const int receiveTimeout = 60000;
  static const int connectionTimeout = 60000;
  static const int sendTimeoutInMs = 60000;

  static const header = {
    'content-Type': 'application/json',
  };

  ///EndPoint
  static const String anime = "/anime";
}
