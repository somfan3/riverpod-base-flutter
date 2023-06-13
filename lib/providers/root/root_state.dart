class RootState {
  int pageIndex;

  RootState({this.pageIndex = 0});

  RootState copyWidth({int? pageIndex}) {
    return RootState(pageIndex: pageIndex ?? this.pageIndex);
  }
}
