import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:insta_app/constants.dart' as Constants;

class NewsFeedIconBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NewsFeedIconBarState();
}

enum IconButtomType { like, comment, share, bookmark }

class _NewsFeedIconBarState extends State<NewsFeedIconBar> {
  Map<IconButtomType, bool> buttomActive = {};

  @override
  void initState() {
    IconButtomType.values.forEach((type) {
      this.buttomActive[type] = false;
    });
    super.initState();
  }

  void _onIconPress(IconButtomType type) {
    setState(() {
      this.buttomActive[type] = !this.buttomActive[type];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          IconButton(
            icon: FaIcon(FontAwesomeIcons.heart,
                color: buttomActive[IconButtomType.like]
                    ? Colors.pink
                    : Constants.COLOR_FONT),
            onPressed: () => _onIconPress(IconButtomType.like),
          ),
          IconButton(
            icon: FaIcon(
              FontAwesomeIcons.comment,
              color: buttomActive[IconButtomType.comment]
                  ? Colors.blue
                  : Constants.COLOR_FONT,
            ),
            onPressed: () => _onIconPress(IconButtomType.comment),
          ),
          IconButton(
            icon: FaIcon(
              FontAwesomeIcons.inbox,
              color: buttomActive[IconButtomType.share]
                  ? Colors.purple
                  : Constants.COLOR_FONT,
            ),
            onPressed: () => _onIconPress(IconButtomType.share),
          )
        ])),
        IconButton(
          icon: FaIcon(
            FontAwesomeIcons.bookmark,
            color: buttomActive[IconButtomType.bookmark]
                ? Colors.brown
                : Constants.COLOR_FONT,
          ),
          onPressed: () => _onIconPress(IconButtomType.bookmark),
        )
      ],
    ));
  }
}
