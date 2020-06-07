import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta_app/constants.dart' as Constants;
import 'package:insta_app/news_feed/news_feed_model.dart';
import 'package:insta_app/story/story_bubble.dart';
import 'package:insta_app/story/story_model.dart';

class NewsFeed extends StatefulWidget {
  final NewsFeedModel newsFeed;

  NewsFeed(Key key, {this.newsFeed}) : super(key: key);

  @override
  _NewsFeedState createState() => _NewsFeedState();
}

class _NewsFeedState extends State<NewsFeed> {
  StoryModel _story;

  @override
  void initState() {
    super.initState();
    _story = widget.newsFeed.author;
  }

  List<Widget> renderComments(List<CommentModel> comments) {
    List<Widget> list = new List<Widget>();
    for (var i = 0; i < comments.length; i++) {
      list.add(Row(children: [
        Text(
          comments[i].author,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Expanded(
            child: Text(
          "  ${comments[i].content}",
          overflow: TextOverflow.ellipsis,
        )),
      ]));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        // header
        Padding(
          padding: const EdgeInsets.only(left: 2),
          child: Row(
              // mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: StoryBubble(
                        key: UniqueKey(),
                        story: _story,
                        radius: 20,
                        readYet: _story.readYet,
                      ),
                    ),
                    Text(_story.name,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.pathwayGothicOne(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert,
                    color: Constants.COLOR_FONT,
                  ),
                ),
              ]),
        ),
        // media gallery
        Image.network(
          widget.newsFeed.galleryMedias[0],
          fit: BoxFit.cover,
        ),
        // button bar
        Container(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              IconButton(
                icon: FaIcon(FontAwesomeIcons.heart),
                onPressed: () {},
              ),
              IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.comment,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.inbox,
                ),
                onPressed: () {},
              )
            ])),
            IconButton(
              icon: FaIcon(FontAwesomeIcons.bookmark),
              onPressed: () {},
            )
          ],
        )),
        // comment section
        Container(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "${widget.newsFeed.likesCount} likes",
                      style: TextStyle(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    )),
                Row(
                  children: [
                    Text(
                      "${widget.newsFeed.author.name}",
                      style: TextStyle(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                    ),
                    Expanded(
                      child: Text(
                        " ${widget.newsFeed.description}",
                        style: TextStyle(),
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                ),
                Divider(
                  height: 4,
                  color: Colors.transparent,
                ),
                Row(children: [
                  Text(
                    "View all ${widget.newsFeed.comments.length} comments",
                    style: TextStyle(color: Colors.grey),
                    textAlign: TextAlign.start,
                  ),
                ]),
                Column(children: renderComments(widget.newsFeed.comments))
              ],
            )),
      ],
    ));
  }
}
