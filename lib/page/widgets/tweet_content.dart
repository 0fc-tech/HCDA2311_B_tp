import 'package:flutter/material.dart';

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
