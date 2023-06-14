import 'package:anime_wiki/common/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AnimeWikiApp extends ConsumerWidget {
  const AnimeWikiApp({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
      title: "AnimeWikiApp",
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
