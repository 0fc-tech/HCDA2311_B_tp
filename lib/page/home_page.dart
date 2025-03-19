import 'package:flutter/material.dart';
import 'package:flutter_twitter/page/widgets/bottom_bar.dart';
import 'package:flutter_twitter/page/widgets/nav_bar.dart';
import 'package:flutter_twitter/page/widgets/sign_in_form.dart';
import 'package:flutter_twitter/page/widgets/tweet.dart';

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
      body: SingleChildScrollView(
        child: Column(children: [NavBar(), SignInForm(), Tweet()]),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
