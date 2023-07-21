import 'package:flutter/material.dart';
import 'package:rick_and_morty/home/home_screen_item.dart';

class HomeLayout extends StatelessWidget {
  final List<HomeScreenItem> items;
  final GestureTapCallback? onTapItem;

  const HomeLayout({
    super.key,
    required this.items,
    this.onTapItem,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue,
      child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            HomeScreenItem item = items[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: onTapItem,
                child: Card(
                  elevation: 4,
                  child: Stack(
                    children: [
                      Image.network(
                        width: MediaQuery.of(context).size.width,
                        item.photoUrl,
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        left: 0.0,
                        right: 0.0,
                        bottom: 0.0,
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.transparent,
                                Colors.black.withOpacity(0.7),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                  "${item.name}_",
                                  style: const TextStyle(
                                    fontSize: 21,
                                    color: Colors.white,
                                    backgroundColor: Colors.black,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  maxLines: 1,
                                ),
                                Text(
                                  item.status,
                                  style: const TextStyle(
                                    fontSize: 21,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  maxLines: 1,
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
