import 'package:flutter/material.dart';
import 'package:flutter_app_player/variable.dart';
import 'package:flutter_vlc_player/flutter_vlc_player.dart';
import 'package:get/route_manager.dart';

class VideoPlayer extends StatefulWidget {
  @override
  _VideoPlayerState createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  VlcPlayerController _videoViewController;
  String url = "$startValue$value";

  @override
  void initState() {
    _videoViewController = new VlcPlayerController(onInit: () {
      _videoViewController.play();
    });
    _videoViewController.addListener(() {
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
            SizedBox(
              height: 250,
              child: VlcPlayer(
                aspectRatio: 16 / 9,
                url: url,
//                url: "rtsp://vizeo.vizeo.fr:1352/snl/live/1/2",
//                url: "rtsp://admin:12345@192.168.0.121:9001/snl/live/1/1",
                controller: _videoViewController,
                // Play with vlc options
                options: [
                  '--quiet',
                  '--no-drop-late-frames',
                  '--no-skip-frames',
                  "--rtsp-tcp",
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
      ),
    );
  }
}
