import 'package:whatsapp_clone/model/user.dart';

class Message {
  final User user;
  final String content;

  Message({this.user, this.content});
}

final List<Message> myMessages = [];
