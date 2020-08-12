import 'package:flutter/material.dart';

import 'body.dart';
import 'components/custom_bottom.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPage = 0;

  void changePage(int page) {
    setState(() {
      currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'WhatsApp Clone',
        ),
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
      body: Body(),
      bottomNavigationBar: CustomBottom(
        selected: currentPage,
        onPressed: changePage,
      ),
    );
  }
}
