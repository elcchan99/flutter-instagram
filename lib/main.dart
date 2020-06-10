import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta_app/news_feed/news_feed_model.dart';
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
      title: 'Clone Instagram',
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

  final List<NewsFeedModel> newsFeeds = [
    NewsFeedModel(
        author: StoryModel(
            avator:
                "https://scontent-hkt1-1.cdninstagram.com/v/t51.2885-15/e35/c0.57.809.809a/s150x150/101649604_276625753387571_5399962706760114154_n.jpg?_nc_ht=scontent-hkt1-1.cdninstagram.com&_nc_cat=111&_nc_ohc=6E8nhvtiHC4AX9_Gg_b&oh=5a2212c5e0f42b7aff38e23ec09dfbfa&oe=5F048834",
            readYet: false,
            name: "scenary"),
        galleryMedias: [
          "https://scontent-hkt1-1.cdninstagram.com/v/t51.2885-15/sh0.08/e35/c0.135.1080.1080a/s640x640/101941578_252548725839144_765387880851239390_n.jpg?_nc_ht=scontent-hkt1-1.cdninstagram.com&_nc_cat=100&_nc_ohc=aYGpQFtQ8XkAX8k4Uft&oh=73b9bf02d96f8e1061026ad07b08f0fa&oe=5F05FD0D"
        ],
        description: "The peaceful Charles Island. Have you been to there yet?",
        likesCount: 999,
        comments: [
          CommentModel(
            author: "Vanvi",
            content: "That is such a beautiful place!!!!",
          ),
          CommentModel(
            author: "mindful_bitch",
            content: "Omg, a dream",
          )
        ]),
    NewsFeedModel(
        author: StoryModel(
            avator:
                "https://scontent-hkt1-1.cdninstagram.com/v/t51.2885-15/e15/c180.0.720.720a/s640x640/102286861_563206224388783_4364844070104976646_n.jpg?_nc_ht=scontent-hkt1-1.cdninstagram.com&_nc_cat=107&_nc_ohc=JrwsjRpCWJ4AX-nvMP5&oh=225c5a44af795acff6166aff32105ae4&oe=5F058A12",
            readYet: false,
            name: "birdy"),
        galleryMedias: [
          "https://scontent-hkt1-1.cdninstagram.com/v/t51.2885-15/sh0.08/e35/s640x640/78926103_180268653386306_4296702942872544537_n.jpg?_nc_ht=scontent-hkt1-1.cdninstagram.com&_nc_cat=102&_nc_ohc=S_xAB94Mgu8AX_Qnosn&oh=f1dca25ce9f23bc6fb37481223709211&oe=5F02F615"
        ],
        description:
            "Do you know what specy is this? Comment down below if you know !",
        likesCount: 456,
        comments: [
          CommentModel(
            author: "karle",
            content: "Cuttie birdie! hehe",
          ),
          CommentModel(
            author: "bird_hunter_007",
            content: "I will hunt down every bird alive ! A_A",
          )
        ]),
    NewsFeedModel(
        author: StoryModel(
            avator:
                "https://scontent-hkt1-1.cdninstagram.com/v/t51.2885-15/e15/c180.0.720.720a/s640x640/102286861_563206224388783_4364844070104976646_n.jpg?_nc_ht=scontent-hkt1-1.cdninstagram.com&_nc_cat=107&_nc_ohc=JrwsjRpCWJ4AX-nvMP5&oh=225c5a44af795acff6166aff32105ae4&oe=5F058A12",
            readYet: false,
            name: "birdy"),
        galleryMedias: [
          "https://scontent-hkt1-1.cdninstagram.com/v/t51.2885-15/sh0.08/e35/s640x640/102390523_1163335870725932_3778922180641359171_n.jpg?_nc_ht=scontent-hkt1-1.cdninstagram.com&_nc_cat=108&_nc_ohc=x7pmqVL-yYsAX_6KY82&oh=9684c5495665cfb869ca6a6e64689cd2&oe=5F06B2C7"
        ],
        description: "Owl is awesome 🦉",
        likesCount: 890,
        comments: [
          CommentModel(
            author: "v.tws",
            content: "I wanna pet one 😆",
          ),
          CommentModel(
            author: "bird_hunter_007",
            content: "I will hunt down every bird alive ! A_A",
          ),
          CommentModel(
            author: "nature_is_great",
            content: "@bird_hunter_007 How rule are you 😡😡😡",
          )
        ])
  ];

  int _selectedPageIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  void _onTapNav(int index) {
    setState(() {
      this._selectedPageIndex = index;
    });
  }

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
        title: Center(
            child: Text(widget.title,
                style: GoogleFonts.grandHotel(
                    color: Constants.COLOR_FONT, fontSize: 30))),
        leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.photo_camera, color: Constants.COLOR_FONT)),
        actions: [
          IconButton(
              onPressed: () {},
              icon:
                  FaIcon(FontAwesomeIcons.inbox, color: Constants.COLOR_FONT)),
        ],
        backgroundColor: Constants.COLOR_BACKGROUND,
      ),
      body: renderPage(_selectedPageIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPageIndex,
        onTap: _onTapNav,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Constants.COLOR_FONT,
              ),
              title: Text("")),
          BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Constants.COLOR_FONT),
              title: Text("")),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box, color: Constants.COLOR_FONT),
              title: Text("")),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.heart, color: Constants.COLOR_FONT),
              title: Text("")),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle, color: Constants.COLOR_FONT),
              title: Text(""))
        ],
      ),
    ));
  }

  Widget renderPage(pageIndex) {
    switch (_selectedPageIndex) {
      case 0:
        return newsFeedPage();
      default:
        return Container();
    }
  }

  Widget newsFeedPage() {
    return Column(children: [
      StoryHeadline(key: storyHeadlineKey, stories: stories),
      Divider(
        height: 1,
        color: Colors.grey,
        thickness: 1,
      ),
      Expanded(
        child: Container(
            child: ListView.builder(
                itemCount: newsFeeds.length,
                itemBuilder: (content, index) => NewsFeed(
                      UniqueKey(),
                      newsFeed: newsFeeds[index],
                    ))),
      )
    ]);
  }
}
