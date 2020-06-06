import 'package:flutter/material.dart';
import 'story_model.dart';

class StoryBubble extends StatefulWidget {
  final StoryModel story;
  final double radius;
  bool readYet;

  StoryBubble({
    Key key,
    @required this.story,
    @required this.radius,
    @required this.readYet,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return StoryBubbleState();
  }
}

class StoryBubbleState extends State<StoryBubble> {
  bool _readYet = false;

  @override
  void initState() {
    super.initState();
    _readYet = widget.readYet;
  }

  void read() {
    setState(() {
      _readYet = !_readYet;
    });
  }

  Color borderColor() {
    return _readYet ? Colors.purple : Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: read,
      child: Container(
        height: widget.radius * 2,
        width: widget.radius * 2,
        decoration: BoxDecoration(
          border: Border.all(
              width: 2, color: borderColor(), style: BorderStyle.solid),
          borderRadius: BorderRadius.all(Radius.circular(widget.radius)),
          gradient: new LinearGradient(
            colors: [Colors.red, Colors.cyan],
          ),
        ),
        child: Container(
            height: widget.radius * 2,
            width: widget.radius * 2,
            decoration: BoxDecoration(
                border: Border.all(
                    width: 2, color: Colors.white, style: BorderStyle.solid),
                borderRadius: BorderRadius.all(Radius.circular(widget.radius))),
            child: Container(
                height: widget.radius * 2,
                width: widget.radius * 2,
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 1, color: Colors.grey, style: BorderStyle.solid),
                    borderRadius:
                        BorderRadius.all(Radius.circular(widget.radius))),
                child: CircleAvatar(
                  radius: widget.radius - 4,
                  backgroundColor: Colors.white,
                  child: ClipOval(
                      child: Image.network(
                    widget.story.avator,
                    fit: BoxFit.contain,
                    height: widget.radius * 2 - 10,
                  )),
                ))),
      ),
    );
  }
}
