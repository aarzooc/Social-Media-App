import 'package:hospichat/screens/forum/models/author_model.dart';

class Reply{
  Author author;
  String content;
  int likes;

  Reply({
    this.author,
    this.content,
    this.likes
  });
}

List<Reply> replies = [
  Reply(
    author: starbs,
    content: 'they have some fun ones to keep you relaxed!',
    likes: 10
  ),
  Reply(
    author: blue,
    content: 'aww feel better soon',
    likes: 10
  ),
  Reply(
    author: hammad,
    content: 'Good thing we are working on an algorithm to predict it!!',
    likes: 10
  ),
];