import 'package:hospichat/screens/forum/models/author_model.dart';
import 'package:hospichat/screens/forum/models/replies_model.dart';

class Question{
  String question;
  String content;
  int votes;
  int repliesCount;
  int views;
  String created_at;
  Author author;
  List<Reply> replies;

  Question({
    this.question,
    this.content,
    this.votes,
    this.repliesCount,
    this.views,
    this.created_at,
    this.author,
    this.replies
  });
}

List<Question> questions = [
  Question(
    author: blue,
    question: 'Hospital',
    content: "What kind of games do you like playing on here?",
    created_at: "1h ago",
    views: 120,
    votes: 100,
    repliesCount: 30,
    replies: replies
  ),
  Question(
    author: fly,
    question: 'Hospital',
    content: "Today I went through an intense surgery and I woke up feeling awful.",
    created_at: "1h ago",
    views: 120,
    votes: 100,
    repliesCount: 30,
    replies: replies
  ),
  Question(
    author: pink,
    question: 'Hospital',
    content: "having chronic low back pain is not fun",
    created_at: "2.5h ago",
    views: 90,
    votes: 10,
    repliesCount: 5,
    replies: replies
  ),
];