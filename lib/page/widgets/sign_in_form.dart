import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignInForm extends StatefulWidget {
  //Function(String email) onSignedIn;

  SignInForm({/*required this.onSignedIn,*/ super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  final controllerEmail = TextEditingController();
  final controllerPwd = TextEditingController();
  bool rememberMe = false;

  String? validateEmail(String? content) {
    if (content != null && content.isNotEmpty && content.contains("@")) {
      return null;
    }
    return "Renseignez un e-mail";
  }

  String? validatePassword(String? content) {
    if (content != null && content.isNotEmpty) {
      return null;
    }
    return "Renseignez un mot de passe";
  }

  void submitForm() {
    _formKey.currentState?.validate();
    context.go("/home/${controllerEmail.text}");
    //widget.onSignedIn();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        spacing: 8,
        children: [
          TextFormField(
            controller: controllerEmail,
            validator: validateEmail,
            onChanged: (a) {
              setState(() {});
            },
            decoration: InputDecoration(
              labelText: "E-mail",
              hintText: "john@doe.com",
            ),
            keyboardType: TextInputType.emailAddress,
          ),
          TextFormField(
            controller: controllerPwd,
            onChanged: (a) {
              setState(() {});
            },
            validator: validatePassword,
            decoration: InputDecoration(
              labelText: "Password",
              hintText: "MdpTr€Komplïke",
            ),
            obscureText: true,
          ),
          SwitchListTile(
            value: rememberMe,
            onChanged: (value) {
              setState(() {
                rememberMe = value ?? false;
              });
            },
            controlAffinity: ListTileControlAffinity.leading,
            title: Text("Remember Me"),
          ),

          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(
              child: Text("Me connecter"),
              onPressed:
                  _formKey.currentState?.validate() == true ? submitForm : null,
            ),
          ),
        ],
      ),
    );
  }
}
