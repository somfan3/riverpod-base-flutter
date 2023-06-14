import 'package:anime_wiki/models/pagination.dart';

class PaginationData<T> {
  late Pagination pagination;
  late T data;

  PaginationData({required this.pagination, required this.data});

  PaginationData.none();
}
