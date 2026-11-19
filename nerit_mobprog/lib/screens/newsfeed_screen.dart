import 'package:material_ui/material_ui.dart';
import '../widgets/newsfeed_card.dart';

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        NewsFeedCard(
          userName: 'Ashley Nicole Nerit',
          profileImage: 'assets/images/ashley.jpg',
          commentProfileImage: 'assets/images/ashley.jpg',
          postContent: 'Hi, magandang buhay!',
          numOfLikes: 1,
          date: 'November 19',
        ),
        NewsFeedCard(
          userName: 'Prince Lomeo Alfanta',
          profileImage: 'assets/images/lomeo.jpg',
          commentProfileImage: 'assets/images/lomeo.jpg',
          postContent: 'misyu bbqng maarte',
          numOfLikes: 500,
          hasImage: true,
          date: 'October 11',
        ),
      ],
    );
  }
}