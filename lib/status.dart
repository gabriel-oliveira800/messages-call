import 'package:flutter/material.dart';

import 'components/status_item.dart';
import 'model/status.dart';
import 'model/user.dart';

class Status extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.35,
      child: Card(
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        color: Colors.white,
        child: ListView.builder(
          itemCount: myStatus.length + 1,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            if (index == 0)
              return StatusItem(status: null, currentUser: myUsers[8]);

            return StatusItem(status: myStatus[index - 1]);
          },
        ),
      ),
    );
  }
}
