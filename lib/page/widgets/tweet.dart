import 'package:flutter/material.dart';
import 'package:flutter_twitter/page/widgets/tweet_content.dart';
import 'package:flutter_twitter/page/widgets/tweet_reactions.dart';

class Tweet extends StatelessWidget {
  const Tweet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [TweetContent(), TweetReactions()]);
  }
}
