import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(centerTitle: true ,title: const Text("Xylophone ", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)),
        body: Column(children: [
          Expanded(
              child: SizedBox(width: 220,child: TextButton(style: TextButton.styleFrom(backgroundColor: Color(0xFFf16745),foregroundColor: Colors.black) ,onPressed: (){player.play(AssetSource('note7.wav'));}, child: Text('B', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)))),
          Expanded(
              child: SizedBox(width: 250,child: TextButton(style: TextButton.styleFrom(backgroundColor: Color(0xFFffc65d),foregroundColor: Colors.black) ,onPressed: (){player.play(AssetSource('note6.wav'));}, child: Text('A', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)))),
          Expanded(
              child: SizedBox(width: 280,child: TextButton(style: TextButton.styleFrom(backgroundColor: Color(0xFF7bc8a4),foregroundColor: Colors.black) ,onPressed: (){player.play(AssetSource('note5.wav'));}, child: Text('G', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)))),
          Expanded(
              child: SizedBox(width: 310,child: TextButton(style: TextButton.styleFrom(backgroundColor: Color(0xFF4cc3d9),foregroundColor: Colors.black) ,onPressed: (){player.play(AssetSource('note4.wav'));}, child: Text('F', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)))),
          Expanded(
              child: SizedBox(width: 340,child: TextButton(style: TextButton.styleFrom(backgroundColor: Color(0xFF93648d),foregroundColor: Colors.black) ,onPressed: (){player.play(AssetSource('note3.wav'));}, child: Text('E', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)))),
          Expanded(
              child: SizedBox(width: 370,child: TextButton(style: TextButton.styleFrom(backgroundColor: Color(0xFF218380),foregroundColor: Colors.black) ,onPressed: (){player.play(AssetSource('note2.wav'));}, child: Text('D', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)))),
          Expanded(
              child: SizedBox(width: 400,child: TextButton(style: TextButton.styleFrom(backgroundColor: Color(0xFF2E86AB),foregroundColor: Colors.black) ,onPressed: (){player.play(AssetSource('note1.wav'));}, child: Text('C', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)))),
        ],
        )
        ),
    );
  }
}