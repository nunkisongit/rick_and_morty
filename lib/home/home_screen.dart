import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  final List<HomeScreenItem> items;

  const HomeScreen({
    super.key,
    required this.items
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'You have pushed the button this many times:',
          ),
          Text(
            '$counter',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ],
      ),
    );
  }
}
