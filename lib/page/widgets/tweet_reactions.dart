import 'package:flutter/material.dart';

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
