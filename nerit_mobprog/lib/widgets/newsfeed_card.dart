import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/screens/home_screen.dart';
import 'custom_text.dart';

class NewsFeedCard extends StatelessWidget {
  final String userName;
  final String postContent;
  final String date;
  final int numOfLikes;
  final bool hasImage;
  const NewsFeedCard({
    super.key,
    required this.userName,
    required this.postContent,
    required this.date,
    required this.numOfLikes,
    this.hasImage = false,
    required this.date,
  });


  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(ScreenUtil().setSp(10)),
      child: Padding (
        padding: EdgeInsets.all(ScreenUtil().setSp(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.person), 
                SizedBox(width: ScreenUtil().setSp(10)
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: userName,
                      fontSize: 15.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    Row( 
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomFont(
                          text: date,
                          fontSize: 12.sp,
                          color: Colors.grey,
                        ),
                        SizedBox(width: ScreenUtil().setSp(3)
                        ),
                        Icon(
                          Icons.public, 
                          size: 12.sp, 
                          color: Colors.grey
                          size: ScreenUtil().setSp(15),
                        ),
                      ],
                    )
                  ],
                ),
                Spacer(),
                Icon(Icons.more_horiz),
              ],
            ),

            SizedBox(height: ScreenUtil().setHeight(0)),
            //Post Content
            CustomFont(
              text: postContent,
              fontSize: ScreenUtil().setSp(12),
              color: Colors.black,
            )
            SizedBox(height: ScreenUtil().setHeight(15)),
            hasImage == true;
              ? const Placeholder()
              : SizedBox(height: ScreenUtil().setHeight(1)
              ), 
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton.icon(
                    onPressed: () {
                      print('Like');
                    },
                    icon: const Icon(
                      Icons.thumb_up, 
                    color: FB_DARK_PRIMARY,
                    ),
                    label: CustomFont(
                      text: numOfLikes.toString(),
                      fontSize: ScreenUtil().setSp(12),
                      color: FB_DARK_PRIMARY,
                    ),
                  ), 
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.comment, 
                      color: FB_DARK_PRIMARY,
                    ),
                    label: CustomFont(
                      text: 'Comment',
                      fontSize: ScreenUtil().setSp(12),
                      color: FB_DARK_PRIMARY,
                    ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.redo, 
                      color: FB_DARK_PRIMARY,
                    ),
                    label: CustomFont(
                      text: 'Share',
                      fontSize: ScreenUtil().setSp(12),
                      color: FB_DARK_PRIMARY,""
                    ),
                  ),
                ],
              ),
//Dito ako natapos
              Row (
                children: [
                  Icon(Icons.person, 
                  SizedBox: ScreenUtil().setWidth(10),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(10)),
                    child: CustomFont(
                      text: 'Share',
                      fontSize: ScreenUtil().setSp(12),
                      color: FB_DARK_PRIMARY,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}