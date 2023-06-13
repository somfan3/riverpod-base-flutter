import 'package:anime_wiki/providers/root/root_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RootProvider extends StateNotifier<RootState> {
  RootProvider() : super(RootState());

  onPageChange(int pageIndex) {
    state = state.copyWidth(pageIndex: pageIndex);
  }
}

final rootProvider = StateNotifierProvider((ref) => RootProvider());
