//import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
//import 'package:logger/logger.dart';
//import 'package:video_audio_player/constants.dart';
import 'package:video_audio_player/homepage.dart';
//import 'package:video_player/video_player.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: VideoAudioPlayer(),
  ));
}

class VideoAudioPlayer extends StatefulWidget {
  const VideoAudioPlayer({super.key});

  @override
  VideoAudioPlayerState createState() => VideoAudioPlayerState();
}

class VideoAudioPlayerState extends State<VideoAudioPlayer> {
  //===================1========================
  // late VideoPlayerController _videoController;
  // late AudioPlayer _audioPlayer;
  // Logger logger = Logger();
  // @override
  // void initState() {
  //   super.initState();
  //   // Initialize video controller
  //   _videoController = linkMp4.contains('http')
  //       ? VideoPlayerController.networkUrl(Uri.parse(linkMp4))
  //       : VideoPlayerController.asset(linkMp4)
  //     ..initialize().then((_) {
  //       setState(() {});
  //     });
  //   // Initialize audio player
  //   _audioPlayer = AudioPlayer();
  //   setState(() {});
  // }
  // @override
  // void dispose() {
  //   // Dispose of the controllers when the widget is disposed
  //   _videoController.dispose();
  //   _audioPlayer.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(primarySwatch: Colors.deepPurple),
    );
    //===================1========================
    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text('Video and Audio Player 369'),
    //   ),
    //   body: Column(
    //     children: [
    //       AspectRatio(
    //         aspectRatio: _videoController.value.aspectRatio,
    //         child: (_audioPlayer.state == PlayerState.paused ||
    //                 _audioPlayer.state == PlayerState.stopped)
    //             ? VideoPlayer(_videoController)
    //             : const ImageAudioWidget(
    //                 linkImage: linkImages,
    //               ),
    //       ),
    //       ElevatedButton(
    //         onPressed: () async {
    //           // Play/pause video
    //           if (_videoController.value.isPlaying) {
    //             _videoController.pause();
    //           } else {
    //             await _videoController.play();
    //           }
    //           setState(() {});
    //           // Play/pause audio
    //           if (_audioPlayer.state == PlayerState.paused ||
    //               _audioPlayer.state == PlayerState.stopped) {
    //             await _audioPlayer.play(UrlSource(linkMp4));
    //           } else {
    //             await _audioPlayer.pause();
    //           }
    //           setState(() {});
    //         },
    //         child: Icon(
    //           _videoController.value.isPlaying ? Icons.pause : Icons.play_arrow,
    //         ),
    //       ),
    //       ElevatedButton(
    //         onPressed: () async {
    //           logger.i(_audioPlayer.state);
    //           // Play/pause audio
    //           if (_audioPlayer.state == PlayerState.paused ||
    //               _audioPlayer.state == PlayerState.stopped) {
    //             await _audioPlayer.play(UrlSource(linkMp3));
    //           } else {
    //             await _audioPlayer.pause();
    //           }
    //           // switch (_audioPlayer.state) {
    //           //   case PlayerState.paused:
    //           //     _audioPlayer.resume();
    //           //     break;
    //           //   case PlayerState.stopped:
    //           //     _audioPlayer.play(UrlSource(
    //           //         'https://vnso-zn-5-tf-a128-zmp3.zmdcdn.me/0ada04925047f743ee3fb22a63de35cb?authen=exp=1703387788~acl=/0ada04925047f743ee3fb22a63de35cb/*~hmac=fea0bd375ba7b15ef982f12f8c0ba61b'));
    //           //     break;
    //           //   case PlayerState.playing:
    //           //     _audioPlayer.pause();
    //           //     break;
    //           //   case PlayerState.completed:
    //           //     _audioPlayer.stop();
    //           //     break;
    //           //   case PlayerState.disposed:
    //           //     _audioPlayer.dispose();
    //           //     break;
    //           // }
    //           setState(() {});
    //         },
    //         child: Icon(
    //           _audioPlayer.state == PlayerState.playing ||
    //                   _audioPlayer.state == PlayerState.stopped
    //               ? Icons.pause
    //               : Icons.play_arrow,
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
