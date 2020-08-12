import 'package:flutter/material.dart';

import 'components/status_item.dart';
import 'model/status.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  final List<StatusModel> status = [
    StatusModel(),
    StatusModel(),
    StatusModel(),
    StatusModel(),
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.red,
      height: size.height * 0.3,
      child: ListView.builder(
        itemCount: status.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return StatusItem(status: status[index]);
        },
      ),
    );
  }
}
