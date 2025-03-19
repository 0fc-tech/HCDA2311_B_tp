import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'appbarTitle',
          style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Column(children: [NavBar(), Tweet(), Spacer(), BottomBar()]),
    );
  }
}

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Fil",
              style: TextStyle(color: Theme.of(context).colorScheme.primary),
            ),
          ),
          TextButton(onPressed: () {}, child: Text("Notification")),
          TextButton(onPressed: () {}, child: Text("Message")),
          TextButton(onPressed: () {}, child: Text("Moi")),
        ],
      ),
    );
  }
}

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      color: Theme.of(context).colorScheme.inversePrimary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
          IconButton(onPressed: () {}, icon: Icon(Icons.home)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
      ),
    );
  }
}

class Tweet extends StatelessWidget {
  const Tweet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [TweetContent(), TweetReactions()]);
  }
}

class TweetReactions extends StatefulWidget {
  const TweetReactions({super.key});

  @override
  State<TweetReactions> createState() => _TweetReactionsState();
}

class _TweetReactionsState extends State<TweetReactions> {
  bool tweetLiked = false;
  bool tweetReplyMode = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    tweetReplyMode = !tweetReplyMode;
                  });
                },
                icon: Icon(Icons.reply),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.repeat)),
              IconButton(
                onPressed: () {
                  setState(() {
                    tweetLiked = !tweetLiked;
                  });
                },
                //icon: Icon(Icons.favorite, color: Colors.red),
                icon:
                    tweetLiked
                        ? Icon(Icons.favorite, color: Colors.red)
                        : Icon(Icons.favorite_border),
              ),
            ],
          ),
          tweetReplyMode
              ? TextField(
                autofillHints: [AutofillHints.email],
                decoration: InputDecoration(hintText: "Réponse"),
              )
              : Container(),
        ],
      ),
    );
  }
}

class TweetContent extends StatelessWidget {
  const TweetContent({super.key});

  @override
  Widget build(BuildContext context) => SizedBox(
    height: 125,
    child: Row(
      children: [
        Image.network("https://picsum.photos/id/8/200/200"),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("LeUserName"),
                    Text("50s", style: TextStyle(color: Colors.grey)),
                  ],
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit.Sed non risus. Suspendisse lectus tortor, dignissim sit amet,adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam.Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proinporttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentumdiam nisl sit amet erat. Duis semper. Duis arcu massa, scelerisque vitae,consequat in, pretium a, enim. Pellentesque congue. Ut in risus volutpatlibero pharetra tempor. Cras vestibulum bibendum augue.",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 4,
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
