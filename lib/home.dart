import 'package:flutter/material.dart';

import 'body.dart';
import 'components/custom_bottom.dart';
import 'components/profile.dart';
import 'model/message.dart';
import 'model/user.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPage = 0;
  int totalMessages = 0;

  void changePage(int page) {
    setState(() {
      currentPage = page;
    });
  }

  void initTotalMessages() {
    var allMessages =
        myMessages.where((item) => item.countMessage != null).toList();

    totalMessages = allMessages
        .map((item) => item.countMessage)
        .toList()
        .reduce((value, element) => value += element);
  }

  @override
  void initState() {
    super.initState();
    initTotalMessages();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Profile(
              height: 38,
              hasBorder: false,
              imageSource: myUsers[8].avatar,
            ),
            Text('WhatsApp Clone'),
          ],
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
        totalMessage: totalMessages,
      ),
    );
  }
}
