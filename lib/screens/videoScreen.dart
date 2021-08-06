import 'package:fashion_preview/widget/videoplay.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "Video",
              style: TextStyle(color: Colors.redAccent),
            ),
          ],
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
          child: IconButton(
            icon: Row(
              children: <Widget>[
                Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.redAccent,
                  size: 25,
                ),
              ],
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: Container(
        height: 220.0,
        decoration: BoxDecoration(
          border: Border.all(
              color: Colors.redAccent, width: 2.0, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(18.0),
        ),
        child: playVideo(
          videoPlayerController:
              VideoPlayerController.asset('images/vide/vid1.mp4'),
          looping: true,
        ),
      ),
    );
  }
}
//     .network(
// 'https://www.pexels.com/video/a-cloud-of-blue-green-paint-underwater-7565438/'),
