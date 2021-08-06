import 'package:fashion_preview/screens/videoScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class videoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) => StaggeredGridView.countBuilder(
        staggeredTileBuilder: (index) => index == 0
            ? StaggeredTile.count(2, 3)
            : index == 1
                ? StaggeredTile.count(3, 5)
                : index == 2
                    ? StaggeredTile.count(2, 3)
                    : index == 3
                        ? StaggeredTile.count(3, 2)
                        : index == 4
                            ? StaggeredTile.count(2, 2)
                            : index == 5
                                ? StaggeredTile.count(2, 2)
                                : index == 6
                                    ? StaggeredTile.count(1, 2)
                                    : StaggeredTile.count(2, 2),
        mainAxisSpacing: 6,
        crossAxisSpacing: 10,
        crossAxisCount: 5,
        itemCount: 8,
        shrinkWrap: true,
        primary: false,
        itemBuilder: (context, index) => TileCard(index: index),
      );
}

class TileCard extends StatelessWidget {
  TileCard({required this.index});
  int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => VideoScreen(),
          ),
        );
      },
      child: Card(
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
                'https://source.unsplash.com/random?sig=$index',
                fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
