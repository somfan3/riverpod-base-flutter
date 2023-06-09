class ApiConstants {
  static const String baseUrl = "https://vietteltelecom.vn/api/";
  static const int receiveTimeout = 60000;
  static const int connectionTimeout = 60000;
  static const int sendTimeoutInMs = 60000;
  static const int defaultCacheMaxAgeInDay = 3;
  static const basicAuthorization = 'Authorization';
  static const token = 'token';
  static const jwtAuthorization = 'JWT-Authorization';
  static const userAgentKey = 'User-Agent';
  static const bearer = 'Bearer';
  static const header = {
    'content-Type': 'application/json',
  };


}
