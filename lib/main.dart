import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Xylophone());
}

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);

  void playSound(int noteN) async {
    final player = AudioPlayer();
    await player.setSource(AssetSource('note$noteN.wav'));
    await player.resume();
  }

  Expanded buildKey() {
    return Expanded(
      child: TextButton(
        onPressed: () async {
          final player = AudioPlayer();
          await player.setSource(AssetSource('note1.wav'));
          await player.resume();
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.red),
        ),
        child: Text(
          '1',
          style: TextStyle(
            fontSize: 40,
            color: Colors.white,
            backgroundColor: Colors.red,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () async {
                    final player = AudioPlayer();
                    await player.setSource(AssetSource('note1.wav'));
                    await player.resume();
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                  ),
                  child: Text(
                    '1',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () async {
                    final player = AudioPlayer();
                    await player.setSource(AssetSource('note2.wav'));
                    await player.resume();
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.orange),
                  ),
                  child: Text(
                    '2',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () async {
                    final player = AudioPlayer();
                    await player.setSource(AssetSource('note3.wav'));
                    await player.resume();
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.yellow),
                  ),
                  child: Text(
                    '3',
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () async {
                    final player = AudioPlayer();
                    await player.setSource(AssetSource('note4.wav'));
                    await player.resume();
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                  ),
                  child: Text(
                    '4',
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () async {
                    final player = AudioPlayer();
                    await player.setSource(AssetSource('note5.wav'));
                    await player.resume();
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.cyan),
                  ),
                  child: Text(
                    '5',
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () async {
                    final player = AudioPlayer();
                    await player.setSource(AssetSource('note6.wav'));
                    await player.resume();
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                  child: Text(
                    '6',
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () async {
                    final player = AudioPlayer();
                    await player.setSource(AssetSource('note7.wav'));
                    await player.resume();
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.purple),
                  ),
                  child: Text(
                    '7',
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
