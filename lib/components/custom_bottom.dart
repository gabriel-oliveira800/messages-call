import 'package:flutter/material.dart';
import 'package:whatsapp_clone/components/notification.dart';

class CustomBottom extends StatelessWidget {
  final int selected;
  final int totalMessage;
  final Color disableColor;
  final Color selectedColor;
  final void Function(int) onPressed;

  const CustomBottom({
    Key key,
    this.selected = 0,
    this.totalMessage = 0,
    this.selectedColor = Colors.white,
    this.disableColor = Colors.black54,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Theme.of(context).accentColor,
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              children: [
                FlatButton.icon(
                  icon: Icon(
                    Icons.chat,
                    color: selected == 0 ? selectedColor : disableColor,
                  ),
                  label: Text(
                    'CHATS',
                    style: TextStyle(
                      color: selected == 0 ? selectedColor : disableColor,
                    ),
                  ),
                  onPressed: () => onPressed(0),
                ),
                if (totalMessage != 0)
                  CountNotification(countMessage: totalMessage.toString()),
              ],
            ),
          ),
          const VerticalDivider(),
          Expanded(
            child: FlatButton.icon(
              icon: Icon(
                Icons.call,
                color: selected == 1 ? selectedColor : disableColor,
              ),
              label: Text(
                'CALLS',
                style: TextStyle(
                  color: selected == 1 ? selectedColor : disableColor,
                ),
              ),
              onPressed: () => onPressed(1),
            ),
          ),
        ],
      ),
    );
  }
}
