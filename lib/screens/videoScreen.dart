import 'package:fashion_preview/widget/videoplay.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoScreen extends StatelessWidget {
  VideoScreen({required this.index});
  int index;
  @override
  Widget build(BuildContext context) {
    String url = '';
    if (index == 0) {
      url =
          'https://user-images.githubusercontent.com/47321390/128574817-13c4c491-ae39-4eb7-9c87-ef1e9127990d.mp4';
    } else if (index == 1) {
      url =
          'https://user-images.githubusercontent.com/47321390/128574668-c0cad9f1-3c7c-4335-9b9d-4d03e4ad490c.mp4';
    } else if (index == 2) {
      url =
          'https://user-images.githubusercontent.com/47321390/128574672-f3faf2d0-543e-4ed9-881f-9dd115ff0c4e.mp4';
    } else if (index == 3) {
      url =
          'https://user-images.githubusercontent.com/47321390/128574695-d7114c16-cafc-4ec7-bbc1-d56c27e60187.mp4';
    } else if (index == 4) {
      url =
          'https://user-images.githubusercontent.com/47321390/128574697-1a584230-3dd2-4223-b8fc-2809b7c88489.mp4';
    } else if (index == 5) {
      url =
          'https://user-images.githubusercontent.com/47321390/128574711-92eb2e47-beba-4f46-82b4-7c770a3aebbd.mp4';
    } else if (index == 6) {
      url =
          'https://user-images.githubusercontent.com/47321390/128574717-8d9de2be-449b-49b7-b7f5-6cecd4ab1426.mp4';
    } else if (index == 7) {
      url =
          'https://user-images.githubusercontent.com/47321390/128574719-c8dffaf6-83c7-424a-ad76-0a9a95727774.mp4';
    } else if (index == 8) {
      url =
          'https://user-images.githubusercontent.com/47321390/128574722-9c817136-a2d6-49a3-9072-51a7f2d6b8ad.mp4';
    }
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
        height: 300,
        decoration: BoxDecoration(
          // border: Border.all(
          //     color: Colors.redAccent, width: 2.0, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(18.0),
        ),
        child: playVideo(
          videoPlayerController: VideoPlayerController.network(url),
          looping: true,
        ),
      ),
    );
  }
}
