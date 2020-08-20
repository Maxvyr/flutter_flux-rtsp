import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_vlc_player/flutter_vlc_player.dart';

Uint8List image;

VlcPlayerController _videoViewController2;
bool isPlaying = true;
double sliderValue = 0.0;
double currentPlayerTime = 0;
double volumeValue = 100;
String startValue = "rtsp://";
String ipRtsp = "";
String port = "";
String baseCodeFlux = "/snl/live/1/";
String fluxPrincipal = "1";
String fluxSecondaire = "2";
String fluxChoisi = "";

String urlTest = "rtsp://vizeo.vizeo.fr:1352/snl/live/1/1";
String urlTest1 = "rtsp://admin:12345@192.168.0.110:9001/snl/live/1/1";
//                url: "rtsp://vizeo.vizeo.fr:1352/snl/live/1/2",
//                url: "rtsp://admin:12345@192.168.0.121:9001/snl/live/1/1",
