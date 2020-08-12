import 'package:flutter/material.dart';

import 'status.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          child: Status(),
          padding: const EdgeInsets.symmetric(vertical: 8.0),
        ),
      ],
    );
  }
}
