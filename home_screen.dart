import 'package:flutter/material.dart';
import 'chat_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> groups = [
    {'name': 'General', 'language': 'English'},
    {'name': 'Daily Rants', 'language': 'English'},
    {'name': 'Korean Chat', 'language': 'Korean'},
    {'name': 'Hindi Rants', 'language': 'Hindi'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Frustra Groups'), backgroundColor: Colors.black),
      body: ListView.builder(
        itemCount: groups.length,
        itemBuilder: (context, index) {
          final group = groups[index];
          return Card(
            color: Colors.grey[900],
            child: ListTile(
              title: Text(group['name']!, style: TextStyle(color: Colors.amber)),
              subtitle: Text('Language: ${group['language']}', style: TextStyle(color: Colors.white)),
              trailing: Icon(Icons.arrow_forward, color: Colors.amber),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => ChatScreen(groupName: group['name']!)),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
