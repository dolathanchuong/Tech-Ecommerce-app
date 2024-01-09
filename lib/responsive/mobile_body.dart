import 'package:flutter/material.dart';

import '../be/playvideoaudio.dart';

class MyMobileBody extends StatelessWidget {
  const MyMobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: const Center(
          child: Text('M O B I L E'),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Plays(),
        // child: Column(
        //   children: [
        //     // youtube video
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: AspectRatio(
        //         aspectRatio: 16 / 9,
        //         child: Container(
        //           color: Colors.cyanAccent[400],
        //         ),
        //       ),
        //     ),
        //     // comment section & recommended videos
        //     Expanded(
        //       child: ListView.builder(
        //         itemCount: 8,
        //         itemBuilder: (context, index) {
        //           return Padding(
        //             padding: const EdgeInsets.all(8.0),
        //             child: Container(
        //               color: Colors.deepPurple[300],
        //               height: 120,
        //             ),
        //           );
        //         },
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
