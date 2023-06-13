import 'package:anime_wiki/models/pagination.dart';

class PaginationData<T> {
  final Pagination pagination;
  final T data;

  const PaginationData({required this.pagination, required this.data});
}
