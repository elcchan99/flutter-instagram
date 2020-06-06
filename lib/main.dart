import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart' as Constants;
import 'story/story_headline.dart';
import 'story/story_model.dart';
import 'news_feed/news_feed.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Instagram'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final storyHeadlineKey = GlobalKey();
  final stories = [
    StoryModel(
        name: "ann",
        avator:
            "https://emojis.slackmojis.com/emojis/images/1454927900/294/feels.png"),
    StoryModel(
        name: "benny",
        avator:
            "https://emojis.slackmojis.com/emojis/images/1463602125/429/troll.png"),
    StoryModel(
        name: "hey",
        avator:
            "https://emojis.slackmojis.com/emojis/images/1590157341/9206/badpokerface.png"),
    StoryModel(
        name: "roy",
        avator:
            "https://emojis.slackmojis.com/emojis/images/1490810099/1966/areyoukiddingme.png"),
    StoryModel(
        name: "kay",
        avator:
            "https://emojis.slackmojis.com/emojis/images/1463601563/418/crying.png"),
    StoryModel(
        name: "wynne",
        avator:
            "https://emojis.slackmojis.com/emojis/images/1463601563/418/crying.png"),
    StoryModel(
        name: "louis",
        avator:
            "https://emojis.slackmojis.com/emojis/images/1463601563/418/crying.png"),
    StoryModel(
        name: "nanny",
        avator:
            "https://emojis.slackmojis.com/emojis/images/1463601563/418/crying.png"),
    StoryModel(
        name: "karle",
        avator:
            "https://emojis.slackmojis.com/emojis/images/1463601563/418/crying.png"),
    StoryModel(
        name: "puddle",
        avator:
            "https://emojis.slackmojis.com/emojis/images/1463601563/418/crying.png"),
    StoryModel(
        name: "yanny",
        avator:
            "https://emojis.slackmojis.com/emojis/images/1463601563/418/crying.png"),
    StoryModel(
        name: "candy",
        avator:
            "https://emojis.slackmojis.com/emojis/images/1463601563/418/crying.png"),
  ];

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text(widget.title,
                  style: GoogleFonts.grandHotel(
                      color: Constants.COLOR_FONT, fontSize: 30)),
              leading: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.photo_camera, color: Constants.COLOR_FONT)),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: FaIcon(FontAwesomeIcons.inbox,
                        color: Constants.COLOR_FONT)),
              ],
              backgroundColor: Constants.COLOR_BACKGROUND,
            ),
            body: Column(children: [
              StoryHeadline(key: storyHeadlineKey, stories: stories),
              Divider(
                height: 1,
                color: Colors.grey,
                thickness: 1,
              ),
              Expanded(
                child: Container(
                    child: ListView.builder(
                        itemCount: 1,
                        itemBuilder: (content, index) => NewsFeed())),
              )
            ])));
  }
}
