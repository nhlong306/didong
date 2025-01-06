import 'package:flutter/material.dart';
import 'user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UserGridScreen(),
    );
  }
}

class UserGridScreen extends StatelessWidget {
  final List<User> users = [
    User(username: 'user1', password: 'pass1', role: 'Admin'),
    User(username: 'user2', password: 'pass2', role: 'Editor'),
    User(username: 'user3', password: 'pass3', role: 'Viewer'),
    User(username: 'user4', password: 'pass4', role: 'Moderator'),
    User(username: 'user5', password: 'pass5', role: 'Guest'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Grid'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns
          childAspectRatio: 3, // Aspect ratio of each card
        ),
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return Card(
            margin: EdgeInsets.all(8.0),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Username: ${user.username}', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text('Role: ${user.role}', style: TextStyle(fontSize: 14)),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
