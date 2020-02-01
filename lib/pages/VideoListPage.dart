import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:good_teacher/AppConstant.dart';
import 'package:good_teacher/funtion/ChewieVideoItem.dart';
import 'package:video_player/video_player.dart';

class VideoListPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _VideoListPageState();
  }

}

class _VideoListPageState extends State<VideoListPage>{
  VideoPlayerController v1,v2,v3,v4,v5;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    v1=VideoPlayerController.asset('video/example1.mp4');
    v2=VideoPlayerController.asset('video/example2.mp4');
    v3=VideoPlayerController.asset('video/example3.mp4');
    v4=VideoPlayerController.asset('video/example4.mp4');
    v5=VideoPlayerController.asset('video/example5.mp4');
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(
        children: <Widget>[
          ChewieVideoItem(
            videoPlayerController: v1,
            looping: true
          ),
          ChewieVideoItem(
              videoPlayerController: v2,
              looping: true
          ),
          ChewieVideoItem(
              videoPlayerController: v3,
              looping: true
          ),
          ChewieVideoItem(
              videoPlayerController: v4,
              looping: true
          ),
          ChewieVideoItem(
              videoPlayerController: v5,
              looping: true
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    v1.dispose();
    v2.dispose();
    v3.dispose();
    v4.dispose();
    v5.dispose();
  }
}
