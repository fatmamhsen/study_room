import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPage extends StatefulWidget {

  static String id = "VideoPage";

  final VideoPlayerController videoPlayerController;
  final bool looping;
  VideoPage({
    this.videoPlayerController,
    this.looping
  }) ;
  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  ChewieController _chewieController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //Wrapper on top of vedioPlayerController
    _chewieController =ChewieController(
        videoPlayerController: widget.videoPlayerController,
        aspectRatio: 16/9,
        autoInitialize: true,
        looping: widget.looping,
        errorBuilder: (context , errorMessege){
          return Center(
            child: Text(
              errorMessege,
              style: TextStyle(color: Colors.white),
            ),
          );
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return  Chewie(
      controller: _chewieController,
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    widget.videoPlayerController.dispose();
    _chewieController.dispose();
  }
}
