import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsAppClone'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () => print('search'),
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () => print('more'),
          ),
        ],
      ),
    );
  }
}
