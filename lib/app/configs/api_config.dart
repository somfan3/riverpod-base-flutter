class ApiConfig {
  ApiConfig._();

  static const token =
      "6369de3d8da8e764cc3c1cbe4121bb6741875de2c30dfd39df8fd351b6a508ea";
  static const String baseUrl = "https://manga-hubx.onrender.com/v1";

  // static const String baseUrl = "http://localhost:4000/v1";
  static const int receiveTimeout = 60000;
  static const int connectionTimeout = 60000;
  static const int sendTimeoutInMs = 60000;

  static const String todos = 'https://jsonplaceholder.typicode.com/todos/';
  static const String popularManga = "/manga/popular/";
  static const String manga = "/manga/";
  static const String chapters = "/chapters/";
  static const String categories = "/categories";

  static const header = {
    'content-Type': 'application/json',
  };
}
