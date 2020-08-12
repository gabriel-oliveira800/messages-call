import 'user.dart';

class StatusModel {
  final User user;
  final String content;

  StatusModel({this.user, this.content});
}

final List<StatusModel> myStatus = [
  StatusModel(
    user: myUsers[8],
    content: myUsers[1].avatar,
  ),
  StatusModel(
    user: myUsers[3],
    content: myUsers[4].avatar,
  ),
  StatusModel(
    user: myUsers[0],
    content: myUsers[5].avatar,
  ),
  StatusModel(
    user: myUsers[6],
    content: myUsers[2].avatar,
  ),
  StatusModel(
    user: myUsers[3],
    content: myUsers[7].avatar,
  ),
  StatusModel(
    user: myUsers[2],
    content: myUsers[0].avatar,
  ),
  StatusModel(
    user: myUsers[3],
    content: myUsers[6].avatar,
  ),
  StatusModel(
    user: myUsers[1],
    content: myUsers[8].avatar,
  ),
  StatusModel(
    user: myUsers[6],
    content: myUsers[7].avatar,
  ),
];
