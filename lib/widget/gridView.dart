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
                                    : index == 7
                                        ? StaggeredTile.count(2, 2)
                                        : index == 8
                                            ? StaggeredTile.count(3, 4)
                                            : StaggeredTile.count(2, 3),
        mainAxisSpacing: 6,
        crossAxisSpacing: 10,
        crossAxisCount: 5,
        itemCount: 10,
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
    String url = '';
    if (index == 0) {
      url =
          'https://user-images.githubusercontent.com/47321390/128574414-480aa251-4ac0-431e-9601-661fd7f96f6f.JPG';
    } else if (index == 1) {
      url =
          'https://user-images.githubusercontent.com/47321390/128574422-4ceec8b8-9224-42a8-867d-5a31f36ea9b4.JPG';
    } else if (index == 2) {
      url =
          'https://user-images.githubusercontent.com/47321390/128574428-9b6b4fab-ec15-4ba0-912d-1a65b4afe531.JPG';
    } else if (index == 3) {
      url =
          'https://user-images.githubusercontent.com/47321390/128574438-ed12b239-e5cb-4ef3-b38c-cba1a67ebc48.JPG';
    } else if (index == 4) {
      url =
          'https://user-images.githubusercontent.com/47321390/128574444-7b1441ee-a3bf-4686-9879-8af477be1941.JPG';
    } else if (index == 5) {
      url =
          'https://user-images.githubusercontent.com/47321390/128574447-129a8283-a15f-432b-8fb2-dc95107fc2b2.JPG';
    } else if (index == 6) {
      url =
          'https://user-images.githubusercontent.com/47321390/128574450-1765ce7d-8787-4b46-ac8c-899811417be1.JPG';
    } else if (index == 7) {
      url =
          'https://user-images.githubusercontent.com/47321390/128574454-8e6152fb-8186-403c-abf1-78cbdd13a4bb.JPG';
    } else if (index == 8) {
      url =
          'https://user-images.githubusercontent.com/47321390/128574459-276d8fc4-87ba-456e-ad67-eb04ae558a98.JPG';
    } else if (index == 9) {
      url =
          'https://user-images.githubusercontent.com/47321390/128593806-20fb1eb4-bf3a-4736-a6b0-842b430e18f1.JPG';
    }
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => VideoScreen(
              index: index,
            ),
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
            child: Image.network(url, fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
