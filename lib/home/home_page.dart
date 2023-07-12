import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty/home/home_screen_item.dart';
import 'package:rick_and_morty/home/mock_home_screen_list.dart';

import 'home_screen.dart';

class HomePage extends ConsumerWidget {
  final String title;

  const HomePage({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<HomeScreenItem> items = ref.watch(homePageProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: HomeScreen(
        items: items,
      ),
    );
  }
}

final homePageProvider = Provider((_) => mockHomeScreenItemList);