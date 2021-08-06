import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class playVideo extends StatefulWidget {
  late final VideoPlayerController videoPlayerController;
  late final bool looping;

  playVideo({required this.videoPlayerController, required this.looping});

  @override
  _playVideoState createState() => _playVideoState();
}

class _playVideoState extends State<playVideo> {
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    // Wrapper on top of the videoPlayerController
    _chewieController = ChewieController(
      videoPlayerController: widget.videoPlayerController,
      //aspectRatio: 16 / 9,
      // Prepare the video to be played and display the first frame
      autoInitialize: true,
      showControlsOnInitialize: true,
      looping: widget.looping,
      allowPlaybackSpeedChanging: true,

      // Errors can occur for example when trying to play a video
      // from a non-existent URL
      errorBuilder: (context, errorMessage) {
        return Center(
          child: Text(
            "Video Not Found",
            style: TextStyle(
                color: Colors.white, fontFamily: 'ProductSans', fontSize: 20),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Chewie(
        controller: _chewieController,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    // IMPORTANT to dispose of all the used resources
    widget.videoPlayerController.dispose();
    _chewieController.dispose();
  }
}
