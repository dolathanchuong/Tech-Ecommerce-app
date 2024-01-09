import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:video_player/video_player.dart';

import '../constants.dart';
import '../widgets.dart';

class Plays extends StatefulWidget {
  const Plays({super.key});

  @override
  State<Plays> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Plays> {
  late VideoPlayerController _videoController;
  late AudioPlayer _audioPlayer;
  Logger logger = Logger();

  @override
  void initState() {
    super.initState();
    // Initialize video controller
    _videoController = linkMp4.contains('http')
        ? VideoPlayerController.networkUrl(Uri.parse(linkMp4))
        : VideoPlayerController.asset(linkMp4)
      ..initialize().then((_) {
        setState(() {});
      });

    // Initialize audio player
    _audioPlayer = AudioPlayer();
    setState(() {});
  }

  @override
  void dispose() {
    // Dispose of the controllers when the widget is disposed
    _videoController.dispose();
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width * 8.0;
    double maxHeight = MediaQuery.of(context).size.height * 0.3;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            SizedBox(
              width: maxWidth,
              height: maxHeight,
              child: AspectRatio(
                aspectRatio: _videoController.value.aspectRatio,
                child: (_audioPlayer.state == PlayerState.paused ||
                        _audioPlayer.state == PlayerState.stopped)
                    ? VideoPlayer(_videoController)
                    : const ImageAudioWidget(
                        linkImage: linkImages,
                      ),
              ),
            ),
          ],
        ),
        Column(
          children: [
            const Text("Action Button"),
            SizedBox(
              height: 50,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      onPressed: () async {
                        // Play/pause video
                        if (_videoController.value.isPlaying) {
                          _videoController.pause();
                        } else {
                          await _videoController.play();
                        }
                        setState(() {});
                        // Play/pause audio
                        // if (_audioPlayer.state == PlayerState.paused ||
                        //     _audioPlayer.state == PlayerState.stopped) {
                        //   await _audioPlayer.play(UrlSource(linkMp4));
                        // } else {
                        //   await _audioPlayer.pause();
                        // }
                        // setState(() {});
                      },
                      child: Icon(
                        _videoController.value.isPlaying
                            ? Icons.pause
                            : Icons.play_arrow,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      onPressed: () async {
                        logger.i(_audioPlayer.state);
                        // Play/pause audio
                        if (_audioPlayer.state == PlayerState.paused ||
                            _audioPlayer.state == PlayerState.stopped) {
                          await _audioPlayer.play(UrlSource(linkMp4));
                        } else {
                          await _audioPlayer.pause();
                        }
                        setState(() {});
                      },
                      child: Icon(
                        _audioPlayer.state == PlayerState.playing ||
                                _audioPlayer.state == PlayerState.stopped
                            ? Icons.pause
                            : Icons.play_arrow,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.purpleAccent,
                    ),
                  )
                ],
              ),
            ),
          ],
        )
      ],
    );
    // return SingleChildScrollView(
    //     child: Column(
    //   mainAxisSize: MainAxisSize.max,
    //   children: [
    //     SizedBox(
    //       // constraints: const BoxConstraints(
    //       //   maxHeight: 260, // Set the maximum height
    //       // ),
    //       width: maxWidth,
    //       height: maxHeight,
    //       child: AspectRatio(
    //         aspectRatio: _videoController.value.aspectRatio,
    //         child: (_audioPlayer.state == PlayerState.paused ||
    //                 _audioPlayer.state == PlayerState.stopped)
    //             ? VideoPlayer(_videoController)
    //             : const ImageAudioWidget(
    //                 linkImage: linkImages,
    //               ),
    //       ),
    //     ),
    //     ElevatedButton(
    //       onPressed: () async {
    //         // Play/pause video
    //         if (_videoController.value.isPlaying) {
    //           _videoController.pause();
    //         } else {
    //           await _videoController.play();
    //         }
    //         setState(() {});
    //         // Play/pause audio
    //         if (_audioPlayer.state == PlayerState.paused ||
    //             _audioPlayer.state == PlayerState.stopped) {
    //           await _audioPlayer.play(UrlSource(linkMp4));
    //         } else {
    //           await _audioPlayer.pause();
    //         }
    //         setState(() {});
    //       },
    //       child: Icon(
    //         _videoController.value.isPlaying ? Icons.pause : Icons.play_arrow,
    //       ),
    //     ),
    //     ElevatedButton(
    //       onPressed: () async {
    //         logger.i(_audioPlayer.state);
    //         // Play/pause audio
    //         if (_audioPlayer.state == PlayerState.paused ||
    //             _audioPlayer.state == PlayerState.stopped) {
    //           await _audioPlayer.play(UrlSource(linkMp3));
    //         } else {
    //           await _audioPlayer.pause();
    //         }
    //         setState(() {});
    //       },
    //       child: Icon(
    //         _audioPlayer.state == PlayerState.playing ||
    //                 _audioPlayer.state == PlayerState.stopped
    //             ? Icons.pause
    //             : Icons.play_arrow,
    //       ),
    //     ),
    //     // Responesive
    //     // Expanded(
    //     //   child: ListView.builder(
    //     //     itemCount: 8,
    //     //     itemBuilder: (context, index) {
    //     //       return Padding(
    //     //         padding: const EdgeInsets.all(8.0),
    //     //         child: Container(
    //     //           color: Colors.deepPurple[300],
    //     //           height: 120,
    //     //         ),
    //     //       );
    //     //     },
    //     //   ),
    //     // ),
    //   ],
    // ));
  }
}
