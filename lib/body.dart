import 'package:flutter/material.dart';
import 'components/message_item.dart';
import 'status.dart';

class Body extends StatelessWidget {
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
              (_, index) => MessageItem(message: null),
              childCount: 25,
            ),
          ),
          padding: const EdgeInsets.symmetric(vertical: 8),
        )
      ],
    );
  }
}
