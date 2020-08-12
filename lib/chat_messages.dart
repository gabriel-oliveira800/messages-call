import 'package:flutter/material.dart';
import 'components/message_item.dart';
import 'model/message.dart';
import 'status.dart';

class ChatMessages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            child: Status(),
            padding: const EdgeInsets.symmetric(vertical: 8.0),
          ),
        ),
        SliverPadding(
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (_, index) => MessageItem(message: myMessages[index]),
              childCount: myMessages.length,
            ),
          ),
          padding: const EdgeInsets.symmetric(vertical: 18),
        )
      ],
    );
  }
}
