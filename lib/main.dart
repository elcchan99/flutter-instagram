import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart' as Constants;
import 'story/story_headline.dart';
import 'story/story_model.dart';

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
        color: Colors.red,
        avator:
            "https://emojis.slackmojis.com/emojis/images/1454927900/294/feels.png"),
    StoryModel(
        name: "benny",
        color: Colors.blue,
        avator:
            "https://emojis.slackmojis.com/emojis/images/1463602125/429/troll.png"),
    StoryModel(
        name: "hey",
        color: Colors.green,
        avator:
            "https://emojis.slackmojis.com/emojis/images/1590157341/9206/badpokerface.png"),
    StoryModel(
        name: "roy",
        color: Colors.yellow,
        avator:
            "https://emojis.slackmojis.com/emojis/images/1490810099/1966/areyoukiddingme.png"),
    StoryModel(
        name: "kay",
        color: Colors.black,
        avator:
            "https://emojis.slackmojis.com/emojis/images/1463601563/418/crying.png"),
    StoryModel(
        name: "wynne",
        color: Colors.pink,
        avator:
            "https://emojis.slackmojis.com/emojis/images/1463601563/418/crying.png"),
    StoryModel(
        name: "louis",
        color: Colors.purple,
        avator:
            "https://emojis.slackmojis.com/emojis/images/1463601563/418/crying.png"),
    StoryModel(
        name: "nanny",
        color: Colors.cyan,
        avator:
            "https://emojis.slackmojis.com/emojis/images/1463601563/418/crying.png"),
    StoryModel(
        name: "karle",
        color: Colors.teal,
        avator:
            "https://emojis.slackmojis.com/emojis/images/1463601563/418/crying.png"),
    StoryModel(
        name: "puddle",
        color: Colors.deepOrange,
        avator:
            "https://emojis.slackmojis.com/emojis/images/1463601563/418/crying.png"),
    StoryModel(
        name: "yanny",
        color: Colors.orange,
        avator:
            "https://emojis.slackmojis.com/emojis/images/1463601563/418/crying.png"),
    StoryModel(
        name: "candy",
        color: Colors.grey,
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
                  onPressed: () => {},
                  icon: Icon(Icons.photo_camera, color: Constants.COLOR_FONT)),
              actions: [
                IconButton(
                    onPressed: () => {},
                    icon: Icon(Icons.chat, color: Constants.COLOR_FONT)),
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
                child: Container(color: Colors.blueGrey),
              )
            ])));
  }
}
