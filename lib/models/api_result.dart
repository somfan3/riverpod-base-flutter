enum ApiState { success, error, empty, none, loading, refresh }

class ApiResult<T> {
  late ApiState state;
  late T data;
  late String message;

  ApiResult({
    this.state = ApiState.none,
    required this.data,
    this.message = "",
  });

  ApiResult<T> copyWidth({
    ApiState? state,
    T? data,
    String? message,
  }) {
    return ApiResult<T>(
      state: state ?? this.state,
      data: data ?? this.data,
      message: message ?? this.message,
    );
  }
}
