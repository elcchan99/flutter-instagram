import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta_app/constants.dart' as Constants;
import 'package:insta_app/story/story_bubble.dart';
import 'package:insta_app/story/story_model.dart';

class NewsFeed extends StatelessWidget {
  final story = StoryModel(
      avator:
          "https://scontent-hkt1-1.cdninstagram.com/v/t51.2885-15/e35/c0.57.809.809a/s150x150/101649604_276625753387571_5399962706760114154_n.jpg?_nc_ht=scontent-hkt1-1.cdninstagram.com&_nc_cat=111&_nc_ohc=6E8nhvtiHC4AX9_Gg_b&oh=5a2212c5e0f42b7aff38e23ec09dfbfa&oe=5F048834",
      name: "temporary",
      readYet: true);
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
                        story: story,
                        radius: 20,
                        readYet: story.readYet,
                      ),
                    ),
                    Text(story.name,
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
          "https://scontent-hkt1-1.cdninstagram.com/v/t51.2885-15/sh0.08/e35/c0.135.1080.1080a/s640x640/101941578_252548725839144_765387880851239390_n.jpg?_nc_ht=scontent-hkt1-1.cdninstagram.com&_nc_cat=100&_nc_ohc=aYGpQFtQ8XkAX8k4Uft&oh=73b9bf02d96f8e1061026ad07b08f0fa&oe=5F05FD0D",
          fit: BoxFit.cover,
        ),
        // button bar
        Container(
            child: Row(
          children: [
            IconButton(
              icon: FaIcon(FontAwesomeIcons.heart),
              onPressed: () {},
            )
          ],
        )),
        // comment section
        Container(),
      ],
    ));
  }
}
