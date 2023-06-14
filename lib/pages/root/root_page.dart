import 'package:anime_wiki/pages/home/home_page.dart';
import 'package:anime_wiki/providers/root/root_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RootPage extends StatelessWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Root"),
      ),
      body: Consumer(
        builder: (context, ref, child) {
          final state = ref.watch(rootProvider);
          return IndexedStack(
            index: state.pageIndex,
            children: const [
              HomePage(),
              SizedBox(),
              SizedBox(),
            ],
          );
        },
      ),
      bottomNavigationBar: Consumer(
        builder: (context, ref, child) {
          final state = ref.watch(rootProvider);
          return BottomNavigationBar(
            onTap: (index) {
              ref.read(rootProvider.notifier).onPageChange(index);
            },
            currentIndex: state.pageIndex,
            items: List.generate(3, (index) => "Page $index")
                .map((e) =>
                    BottomNavigationBarItem(icon: Icon(Icons.add), label: e))
                .toList(),
          );
        },
      ),
    );
  }
}
