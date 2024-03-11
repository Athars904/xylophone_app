import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded buildkey (Color color,int soundNumber)
  {
    return
      Expanded(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
          ),
          onPressed:() async{
            final player = AudioPlayer();
            await player.play(AssetSource('assets/note$soundNumber.wav'));
          }, child: Text('Sound $soundNumber',
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),),),
      );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children :<Widget> [
              buildkey(Colors.red ,1),
              buildkey(Colors.orange ,2),
              buildkey(Colors.yellow ,3),
              buildkey(Colors.green ,4),
              buildkey(Colors.teal ,5),
              buildkey(Colors.blue ,6),
              buildkey(Colors.purpleAccent ,7),
            ],
          ),
        ),
      ),
    );
  }
}
