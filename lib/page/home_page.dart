import 'package:flutter/material.dart';
import 'package:flutter_twitter/page/widgets/bottom_bar.dart';
import 'package:flutter_twitter/page/widgets/nav_bar.dart';
import 'package:flutter_twitter/page/widgets/tweet.dart';

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
      body: SingleChildScrollView(child: Column(children: [NavBar(), Tweet()])),
      bottomNavigationBar: BottomBar(),
    );
  }
}
