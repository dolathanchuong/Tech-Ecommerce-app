import 'package:flutter/material.dart';
import 'package:video_audio_player/responsive/desktop_body.dart';
import 'package:video_audio_player/responsive/mobile_body.dart';
import 'package:video_audio_player/responsive/responsive_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayout(
        mobileBody: MyMobileBody(),
        desktopBody: MyDesktopBody(),
      ),
    );
  }
}
