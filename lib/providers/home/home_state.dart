part of 'home_provider.dart';

class HomeState {
  var listAnimeResult = ApiResult<PaginationData<List<Anime>>>(
      data: PaginationData<List<Anime>>.none(), state: ApiState.none);

  HomeState({ApiResult<PaginationData<List<Anime>>>? listAnimeResult}) {
    this.listAnimeResult = listAnimeResult ?? this.listAnimeResult;
  }

  HomeState copyWith(
      {ApiResult<PaginationData<List<Anime>>>? listAnimeResult}) {
    return HomeState(
      listAnimeResult: listAnimeResult ?? this.listAnimeResult,
    );
  }
}
