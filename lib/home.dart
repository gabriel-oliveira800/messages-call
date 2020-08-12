import 'package:flutter/material.dart';

import 'calls.dart';
import 'chat_messages.dart';
import 'components/custom_bottom.dart';
import 'components/profile.dart';
import 'constants.dart';
import 'model/message.dart';
import 'model/user.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPage = 0;
  int totalMessages = 0;
  PageController controller;

  @override
  void initState() {
    super.initState();
    initTotalMessages();
    controller = PageController(initialPage: 0);
  }

  void jumToPage(int page) {
    setState(() {
      currentPage = page;
    });
    controller.animateToPage(
      currentPage,
      curve: Curves.easeOut,
      duration: Duration(milliseconds: 300),
    );
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
      body: PageView(
        controller: controller,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          ChatMessages(),
          CallsMessages(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: lightGreen,
        onPressed: () => print('add message'),
        child: Icon(currentPage == 0 ? Icons.message : Icons.add_call),
      ),
      bottomNavigationBar: CustomBottom(
        selected: currentPage,
        onPressed: jumToPage,
        totalMessage: totalMessages,
      ),
    );
  }
}
