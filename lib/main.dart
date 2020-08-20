import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_app_player/variable.dart';
import 'package:flutter_app_player/video_player.dart';
import 'package:flutter_vlc_player/flutter_vlc_player.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyAppScaffold());
  }
}

class MyAppScaffold extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyAppScaffoldState();
}

class MyAppScaffoldState extends State<MyAppScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RTSP player"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(height: Get.height * 0.1),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                keyboardType: TextInputType.text,
                onChanged: (stringSubmitted) {
                  setState(() {
                    ipRtsp = stringSubmitted;
                  });
                },
                decoration: InputDecoration(
                  labelText: "Entrez l'adresse",
                  fillColor: Colors.blue,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(),
                  ),
                ),
              ),
            ),
            SizedBox(height: Get.height * 0.1),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                keyboardType: TextInputType.text,
                onChanged: (stringSubmittedPort) {
                  setState(() {
                    port = stringSubmittedPort;
                  });
                },
                // decoration note un text dans le text filed pour que
                // l'opérateur sache quoit noter dans ce champ
                decoration: InputDecoration(
                  labelText: "Entrez le port",
                  fillColor: Colors.blue,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(),
                  ),
                ),
              ),
            ),
            SizedBox(height: Get.height * 0.05),
            Text("Choix du flux :"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  child: Text(fluxPrincipal),
                  onPressed: () {
                    fluxChoisi = fluxPrincipal;
                    setState(() {});
                  },
                  color: Colors.amber,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                ),
                RaisedButton(
                  child: Text(fluxSecondaire),
                  onPressed: () {
                    fluxChoisi = fluxSecondaire;
                    setState(() {});
                  },
                  color: Colors.amber,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                ),
              ],
            ),
            SizedBox(height: Get.height * 0.05),
            Text("Lancer le flux :"),
            RaisedButton(
              child: Text(ipRtsp == "" ? "Pas de flux" : "Voir le flux"),
              onPressed: ipRtsp == ""
                  ? () {}
                  : () {
                      Get.to(VideoPlayer());
                      print("Go");
                    },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0)),
            ),
            SizedBox(height: Get.height * 0.02),
            Divider(
              height: 1,
              color: Colors.black,
            ),
            SizedBox(height: Get.height * 0.02),
            RaisedButton(
              child: Text("add flux exemple"),
              onPressed: () {
                ipRtsp = "admin:12345@192.168.0.121:9001";
                print(ipRtsp);
                setState(() {});
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0)),
            ),
          ],
        ),
      ),
    );
  }
}
