import 'package:flutter/material.dart';
import 'package:flutter_app_player/variable.dart';
import 'package:flutter_vlc_player/flutter_vlc_player.dart';
import 'package:get/route_manager.dart';

class VideoPlayer extends StatefulWidget {
  @override
  _VideoPlayerState createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  VlcPlayerController _videoViewController0;
  VlcPlayerController _videoViewController1;
  VlcPlayerController _videoViewController2;
  VlcPlayerController _videoViewController3;

  double width = Get.width * 0.5;

  String url = "$startValue$ipRtsp:$port$baseCodeFlux$fluxChoisi";

  @override
  void initState() {
//    video 1
    _videoViewController0 = VlcPlayerController(onInit: () {
      _videoViewController0.play();
    });
    _videoViewController0.addListener(() {
      setState(() {});
    });
//    video 2
    _videoViewController1 = VlcPlayerController(onInit: () {
      _videoViewController1.play();
    });
    _videoViewController1.addListener(() {
      setState(() {});
    });
//    video 3
    _videoViewController2 = VlcPlayerController(onInit: () {
      _videoViewController2.play();
    });
    _videoViewController2.addListener(() {
      setState(() {});
    });
//    video 4
    _videoViewController3 = VlcPlayerController(onInit: () {
      _videoViewController3.play();
    });
    _videoViewController3.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vidéo RTSP"),
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(url),
            Row(
              children: [
                Container(
                  width: width,
                  child: VlcPlayer(
                    aspectRatio: 16 / 9,
                    url: url,
                    controller: _videoViewController0,
                    // Play with vlc options
                    options: [
                      "--quiet",
//                      "--no-drop-late-frames",
//                      "--no-skip-frames",
                      "--rtsp-tcp",
//                      "--aout=opensles"
                    ],
                    hwAcc: HwAcc
                        .DISABLED, // or {HwAcc.AUTO, HwAcc.DECODING, HwAcc.FULL}
                    placeholder: Container(
                      height: 250.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[CircularProgressIndicator()],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: width,
                  child: VlcPlayer(
                    aspectRatio: 16 / 9,
                    url: urlTest,
                    controller: _videoViewController1,
                    // Play with vlc options
                    options: [
                      "--quiet",
//                      "--no-drop-late-frames",
//                      "--no-skip-frames",
                      "--rtsp-tcp",
//                      "--aout=opensles"
                    ],
                    hwAcc: HwAcc
                        .DISABLED, // or {HwAcc.AUTO, HwAcc.DECODING, HwAcc.FULL}
                    placeholder: Container(
                      height: 250.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[CircularProgressIndicator()],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: width,
                  child: VlcPlayer(
                    aspectRatio: 16 / 9,
                    url: urlTest,
                    controller: _videoViewController2,
                    // Play with vlc options
                    options: [
                      "--quiet",
//                      "--no-drop-late-frames",
//                      "--no-skip-frames",
                      "--rtsp-tcp",
//                      "--aout=opensles"
                    ],
                    hwAcc: HwAcc
                        .DISABLED, // or {HwAcc.AUTO, HwAcc.DECODING, HwAcc.FULL}
                    placeholder: Container(
                      height: 250.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[CircularProgressIndicator()],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: width,
                  child: VlcPlayer(
                    aspectRatio: 16 / 9,
                    url: urlTest,
                    controller: _videoViewController3,
                    // Play with vlc options
                    options: [
                      "--quiet",
//                      "--no-drop-late-frames",
//                      "--no-skip-frames",
                      "--rtsp-tcp",
//                      "--aout=opensles"
                    ],
                    hwAcc: HwAcc
                        .DISABLED, // or {HwAcc.AUTO, HwAcc.DECODING, HwAcc.FULL}
                    placeholder: Container(
                      height: 250.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[CircularProgressIndicator()],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
