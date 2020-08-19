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
String value = "";
//String onSubmit = "rtsp://vizeo.vizeo.fr:1352/snl/live/1/2";
