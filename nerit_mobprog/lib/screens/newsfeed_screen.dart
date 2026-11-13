import 'package:flutter/material.dart';

import '../widgets/newsfeed_card.dart';

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        NewsFeedCard(
          userName: 'Eleanore Solana',
          postContent: 'Hi Baby',
          numOfLikes: 100,
          date: 'October 11',
        ),
        NewsFeedCard(
          userName: 'Primrose Hygiea',
          postContent: 'Ulol nio, El',
          numOfLikes: 200,
          hasImage: true,
          date: 'December 2',
        ),
      ],
    );
  }
}
