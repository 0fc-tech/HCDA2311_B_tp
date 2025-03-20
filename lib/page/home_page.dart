import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_twitter/page/widgets/bottom_bar.dart';
import 'package:flutter_twitter/page/widgets/nav_bar.dart';
import 'package:flutter_twitter/page/widgets/tweet.dart';
import 'package:http/http.dart';

import '../model/tweet_model.dart';

class HomePage extends StatelessWidget {
  final String email;

  const HomePage(this.email, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          email,
          style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: SingleChildScrollView(
        child: Column(children: [NavBar(), Expanded(child: Tweet())]),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}

Future<List<TweetModel>> getTweets() async {
  final response = await get(
    Uri.parse(
      "https://raw.githubusercontent.com/Chocolaterie/EniWebService/main/api/tweets.json",
    ),
  );
  final List<dynamic> listTweetMap = jsonDecode(response.body);

  return listTweetMap
      .map((mapTweet) => TweetModel.fromMap(mapTweet as Map<String, dynamic>))
      .toList();
}
