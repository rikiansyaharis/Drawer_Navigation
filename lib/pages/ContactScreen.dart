import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  final List contact = [
    "Anna",
    "Bella",
    "Sauqy",
    "Andi",
    "Jones",
    "Joseph",
    "Ardian",
    "Angry"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(contact[index], style: TextStyle(fontSize: 20)),
              subtitle: Text('082xxxxxxxxx '),
              leading: Icon(Icons.person),
            ),
          );
        },
        itemCount: contact.length,
      ),
    );
  }
}
