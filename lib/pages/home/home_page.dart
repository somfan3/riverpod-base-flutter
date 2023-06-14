import 'package:anime_wiki/common/widgets/error_widget.dart';
import 'package:anime_wiki/models/api_result.dart';
import 'package:anime_wiki/providers/home/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeProvider);
    if (state.listAnimeResult.state == ApiState.loading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.listAnimeResult.state == ApiState.error) {
      return Center(
        child: CustomErrorWidget(
          message: state.listAnimeResult.message,
          onRetry: () {
            ref.read(homeProvider.notifier).getListManga();
          },
        ),
      );
    }

    if (state.listAnimeResult.state == ApiState.success) {
      final listAnime = state.listAnimeResult.data.data;
      return ListView.separated(
          itemBuilder: (context, index) {
            final item = listAnime[index];
            return Column(
              children: [
                Text(item.title ?? ""),
                Text(item.url ?? ""),
              ],
            );
          },
          separatorBuilder: (context, index) => const SizedBox(height: 8),
          itemCount: listAnime.length);
    }

    return const SizedBox();
  }
}
