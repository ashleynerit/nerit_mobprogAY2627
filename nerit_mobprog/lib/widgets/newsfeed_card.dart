import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';
import 'custom_text.dart';

class NewsFeedCard extends StatelessWidget {
  final String userName;
  final String postContent;
  final String date;
  final int numOfLikes;
  final bool hasImage;
  final String profileImage;
  final String commentProfileImage;

  const NewsFeedCard({
    super.key,
    required this.userName,
    required this.postContent,
    this.numOfLikes = 0,
    this.hasImage = false,
    required this.date,
    required this.profileImage,
    required this.commentProfileImage,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(ScreenUtil().setSp(10)),
      child: Padding(
        padding: EdgeInsets.all(ScreenUtil().setSp(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(profileImage),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: userName,
                      fontSize: ScreenUtil().setSp(15),
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomText(
                          text: date,
                          fontSize: ScreenUtil().setSp(12),
                          color: Colors.grey,
                        ),
                        SizedBox(width: ScreenUtil().setWidth(3)),
                        Icon(
                          Icons.public,
                          color: Colors.grey,
                          size: ScreenUtil().setSp(15),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                const Icon(Icons.more_horiz),
              ],
            ),
            SizedBox(height: ScreenUtil().setHeight(5)),
            CustomText(
              text: postContent,
              fontSize: ScreenUtil().setSp(12),
              color: Colors.black,
            ),
            SizedBox(height: ScreenUtil().setHeight(5)),
            if (hasImage)
              Image.asset(
                'assets/images/leticia.jpg',
                width: double.infinity,
                height: ScreenUtil().setHeight(300),
                fit: BoxFit.cover,
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.redAccent,
                    size: ScreenUtil().setSp(18),
                  ),
                  label: CustomText(
                    text: numOfLikes.toString(),
                    fontSize: ScreenUtil().setSp(12),
                    color: Colors.black87,
                  ),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.chat_bubble_outline,
                    color: Colors.black87,
                    size: ScreenUtil().setSp(18),
                  ),
                  label: CustomText(
                    text: 'Comment',
                    fontSize: ScreenUtil().setSp(12),
                    color: Colors.black87,
                  ),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.share_outlined,
                    color: Colors.black87,
                    size: ScreenUtil().setSp(18),
                  ),
                  label: CustomText(
                    text: 'Share',
                    fontSize: ScreenUtil().setSp(12),
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundImage: AssetImage(commentProfileImage),
                ),
                SizedBox(width: ScreenUtil().setWidth(6)),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(
                      ScreenUtil().setSp(10),
                      0,
                      0,
                      0,
                    ),
                    alignment: Alignment.centerLeft,
                    height: ScreenUtil().setHeight(25),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.all(
                        Radius.circular(ScreenUtil().setSp(10)),
                      ),
                    ),
                    child: CustomText(
                      text: 'Write a comment...',
                      fontSize: ScreenUtil().setSp(11),
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),
            CustomText(
              text: 'View comments',
              fontSize: ScreenUtil().setSp(12),
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
