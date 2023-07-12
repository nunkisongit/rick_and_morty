import 'package:flutter/material.dart';
import 'package:rick_and_morty/home/home_screen_item.dart';

class HomeScreen extends StatelessWidget {

  final List<HomeScreenItem> items;

  const HomeScreen({
    super.key,
    required this.items
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          HomeScreenItem item = items[index];
          return Column(
            children: [
              Text(item.name),
              Text(item.status),
              Text(item.photoUrl)
            ],
          );
        }
    );
  }
}
