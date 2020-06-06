import 'package:flutter/material.dart';
import 'story_model.dart';
import 'story_bubble.dart';

class StoryHeadline extends StatefulWidget {
  final List<StoryModel> stories;

  StoryHeadline({Key key, this.stories}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return StoryHeadlineState();
  }
}

class StoryHeadlineState extends State<StoryHeadline> {
  final bubbleRadius = 60.0;
  final padding = 10.0;
  final nameTagFont = 11.0;

  bool readYet(StoryModel story) {
    return story.readYet;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: bubbleRadius + (nameTagFont + 2) + 5 * 2,
        child: ListView.separated(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: padding),
          scrollDirection: Axis.horizontal,
          itemCount: widget.stories.length,
          itemBuilder: (context, index) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                StoryBubble(
                  story: widget.stories[index],
                  radius: bubbleRadius / 2,
                  readYet: true,
                  key: ObjectKey(widget.stories[index]),
                ),
                Container(
                    width: bubbleRadius,
                    child: Text(
                      widget.stories[index].name,
                      overflow: TextOverflow.fade,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: readYet(widget.stories[index])
                            ? Colors.grey
                            : Colors.black,
                        fontSize: nameTagFont,
                      ),
                    )),
              ],
            );
          },
          separatorBuilder: (context, index) {
            return Divider(
              indent: padding,
            );
          },
        ));
  }
}
