import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ChewieVideoItem extends StatefulWidget{
  final VideoPlayerController videoPlayerController;
  final bool looping;

  ChewieVideoItem(
      {
        @required this.videoPlayerController,
        this.looping,
        Key key
      }
      ): super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ChewieVideoItemState();
  }

}

class _ChewieVideoItemState extends State<ChewieVideoItem>{
  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _chewieController = new ChewieController(
        videoPlayerController: widget.videoPlayerController,
        aspectRatio: 16/9,
        autoInitialize: true,
        looping: widget.looping,
        errorBuilder: (context, errorMessage){
          return Center(
            child: Text(
              errorMessage,
              style: TextStyle(color: Colors.white),
            ),
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    double devWidth=MediaQuery.of(context).size.width;
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.all(devWidth/15),
      child: Chewie(
        controller: _chewieController,
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _chewieController.dispose();
  }
}