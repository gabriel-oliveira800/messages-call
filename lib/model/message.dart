import 'package:whatsapp_clone/model/user.dart';

class Message {
  final User user;
  final String hours;
  final String content;
  final int countMessage;

  Message({this.user, this.hours, this.content, this.countMessage});
}

final List<Message> myMessages = [
  Message(
    hours: '12:00',
    user: myUsers[0],
    countMessage: 12,
    content: 'Hello, what name ?',
  ),
  Message(
    hours: '19:28',
    user: myUsers[8],
    content: 'You can me help ?',
  ),
  Message(
    hours: '10:00',
    user: myUsers[4],
    content: 'I am playing.',
  ),
  Message(
    hours: '21:45',
    countMessage: 5,
    user: myUsers[5],
    content: 'I am playing.',
  ),
  Message(
    hours: '15:06',
    user: myUsers[6],
    content: 'I am playing.',
  ),
  Message(
    hours: '13:36',
    user: myUsers[7],
    countMessage: 7,
    content: 'I am playing.',
  ),
];
