import 'package:flutter/material.dart';

class SongsScreen extends StatelessWidget {
  final List bulan = [
    "Adele Easy On Me",
    "Jangan Pernah Berubah",
    "On My Way",
    "Someone Loved You",
    "Android",
    "Tertanam",
    "Lukisan"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(bulan[index], style: TextStyle(fontSize: 15)),
              subtitle: Text('Songs '),
              leading: Icon(Icons.audiotrack),
            ),
          );
        },
        itemCount: bulan.length,
      ),
    );
  }
}
