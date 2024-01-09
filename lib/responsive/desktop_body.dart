import 'package:flutter/material.dart';
import 'package:video_audio_player/be/playVideoAudio.dart';

//import 'dimensions.dart';

class MyDesktopBody extends StatelessWidget {
  const MyDesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: const Center(
          child: Text('D E S K T O P'),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: [
            // First Column
            Expanded(
              child: Plays(),
            ),
            ////Test Single Responsive
            // Expanded(
            //   child: Column(
            //     children: [
            //       // youtube video
            //       Padding(
            //         padding: const EdgeInsets.all(8.0),
            //         child: AspectRatio(
            //           aspectRatio: 16 / 9,
            //           child: Container(
            //             color: Colors.deepOrange[400],
            //           ),
            //         ),
            //       ),
            //       // comment section & recommended videos
            //       Expanded(
            //         child: ListView.builder(
            //           itemCount: 8,
            //           itemBuilder: (context, index) {
            //             return Padding(
            //               padding: const EdgeInsets.all(8.0),
            //               child: Container(
            //                 color: Colors.deepPurple[300],
            //                 height: 120,
            //               ),
            //             );
            //           },
            //         ),
            //       )
            //     ],
            //   ),
            // ),
            // second Column
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Container(
            //     width: desktopWidth,
            //     color: Colors.deepPurple[300],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
