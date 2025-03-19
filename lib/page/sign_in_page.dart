import 'package:flutter/material.dart';
import 'package:flutter_twitter/page/widgets/sign_in_form.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('appbarTitle')),
      body: SignInForm(
        //onSignedIn: (String email) {
        //  print("l'email user est $email");
        //  context.go("/home");
        //},
      ),
    );
  }
}
