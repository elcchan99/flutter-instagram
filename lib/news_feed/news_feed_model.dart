import 'package:insta_app/story/story_model.dart';

class NewsFeedModel {
  StoryModel author;
  int likesCount;
  String description;
  List<String> galleryMedias;
  List<CommentModel> comments;
  NewsFeedModel(
      {this.author,
      this.galleryMedias,
      this.likesCount = 0,
      this.description = "",
      this.comments = const []});
}

class CommentModel {
  String author;
  String content;
  CommentModel({this.author, this.content});
}
