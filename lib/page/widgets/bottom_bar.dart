import 'package:flutter/material.dart';

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
